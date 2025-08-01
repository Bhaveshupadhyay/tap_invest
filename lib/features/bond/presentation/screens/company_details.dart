import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tap_invest/core/theme/app_color.dart';
import 'package:tap_invest/features/bond/presentation/cubits/bond_details/bond_details_cubit.dart';
import 'package:tap_invest/features/bond/presentation/cubits/bond_details/bond_details_state.dart';
import 'package:tap_invest/features/bond/presentation/widgets/company_page_view.dart';

import '../../../../core/common/widgets/loader.dart';


class CompanyDetails extends StatefulWidget {
  final String isin;
  const CompanyDetails({super.key, required this.isin});

  @override
  State<CompanyDetails> createState() => _CompanyDetailsState();
}

class _CompanyDetailsState extends State<CompanyDetails> {

  @override
  void initState() {
    super.initState();
    context.read<BondDetailsCubit>().getAllBondDetails(widget.isin);
  }

  @override
  Widget build(BuildContext context) {
    final theme= Theme.of(context);

    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(Navigator.canPop(context))
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: SizedBox(
                  width: 36.w,
                  height: 36.w,
                  child: Material(
                    shape: CircleBorder(),
                    color: AppColors.white,
                    elevation: 1,
                    child: IconButton(
                      icon: SvgPicture.asset('assets/images/ic_arrow_left.svg',height: 18.w,),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),
              ),
            Expanded(
              child: BlocBuilder<BondDetailsCubit,BondDetailsState>(
                builder: (context,state) {
                  if(state is BondDetailsLoading){
                    return Center(child: const Loader());
                  }
                  else if(state is BondDetailsLoaded){
                    final bondDetails= state.bond;

                    return CustomScrollView(
                      slivers:[
                        SliverToBoxAdapter(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20.w),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 30.h,),

                                SizedBox(
                                  width: 60.w,
                                  height: 60.w,
                                  child: Material(
                                    color: AppColors.white,
                                    borderRadius: BorderRadius.circular(12.r),
                                    elevation: 1,
                                    child: Padding(
                                      padding: EdgeInsets.all(8.r),
                                      child: Image.network(bondDetails.logo,),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 10.h,),
                                Text(bondDetails.companyName,
                                  style: theme.textTheme.headlineMedium,
                                ),
                                SizedBox(height: 10.h,),
                                Text(bondDetails.description,
                                  style: theme.textTheme.bodyMedium,
                                ),
                                SizedBox(height: 10.h,),
                                Row(
                                  spacing: 10.w,
                                  children: [
                                    _isinStatus(theme: theme, text: 'ISIN: ${bondDetails.isin}', textColor: AppColors.blue),
                                    _isinStatus(theme: theme, text: bondDetails.status, textColor: AppColors.green),
                                  ],
                                ),
                                SizedBox(height: 15.h,),
                              ],
                            ),
                          ),
                        ),
                        SliverFillRemaining(
                          child: Padding(
                            padding: EdgeInsets.symmetric( horizontal: 20.w),
                            child: CompanyPageView(),
                          ),
                        )
                      ],
                    );
                  }

                  return SizedBox.shrink();
                }
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _isinStatus({required ThemeData theme, required String text, required Color textColor})=>
      Material(
        borderRadius: BorderRadius.circular(4.r),
        color: textColor.withValues(alpha: 0.12),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 5.h,horizontal: 10.w),
          child: Text(text,
            style: theme.textTheme.headlineSmall?.copyWith(
              color: textColor
            ),
          ),
        ),
      );
}
