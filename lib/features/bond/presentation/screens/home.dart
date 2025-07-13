import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tap_invest/core/common/widgets/common_divider.dart';
import 'package:tap_invest/core/common/widgets/common_textfield.dart';
import 'package:tap_invest/core/common/widgets/loader.dart';
import 'package:tap_invest/core/theme/app_color.dart';
import 'package:tap_invest/features/bond/presentation/cubits/bond/bond_cubit.dart';
import 'package:tap_invest/features/bond/presentation/widgets/search_result.dart';

import '../cubits/bond/bond_states.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  final _searchController= TextEditingController();

  @override
  void initState() {
    super.initState();
    context.read<BondCubit>().getAllBonds();
  }
  @override
  Widget build(BuildContext context) {
    final theme= Theme.of(context);

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 20.h,),
              Text('Home',
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 25.h,),
              CommonTextField(
                  hintText: 'Search by Issuer Name or ISIN',
                  textEditingController: _searchController,
                  keyboardType: TextInputType.text,
                bgColor: theme.primaryColor,
                border: Border.all(
                  color: AppColors.grey200,
                  width: 0.5
                ),
                prefixSvgIcon: 'assets/images/ic_search.svg',
                onTextChanged: (s){
                    context.read<BondCubit>().search(s.trim());
                },
              ),
              SizedBox(height: 25.h,),

              Expanded(
                child: BlocBuilder<BondCubit,BondState>(
                  builder: (context,state){
                    if(state is BondStateLoading){
                      return Center(child: const Loader());
                    }
                    else if(state is BondStateLoaded){
                      final bondItems= state.bond;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(_searchController.text.isNotEmpty? 'SEARCH RESULTS':'SUGGESTED RESULTS',
                            style: theme.textTheme.headlineSmall,
                          ),
                          SizedBox(height: 10.h,),
                          Expanded(
                            child: Container(
                              // height: (50.w+12.h+20.h)*itemCount,
                              padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 15.w),
                              decoration: BoxDecoration(
                                color: theme.primaryColor,
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              child: ListView.separated(
                                  itemBuilder: (context,index){
                                    final bondItem= bondItems[index];
                                    return SearchResult(
                                      // key: Key('${index+1}'),
                                      logo: bondItem.logo,
                                      isin: bondItem.isin,
                                      rating: bondItem.rating,
                                      companyName: bondItem.companyName,
                                      searchTerm: _searchController.text,
                                    );
                                  },
                                  separatorBuilder: (context,index){
                                    return CommonDivider();
                                  },
                                  itemCount: bondItems.length
                              ),
                            ),
                          ),
                        ],
                      );
                    }
                    return SizedBox.shrink();

                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }
}
