import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tap_invest/features/bond/presentation/widgets/company_pros_cons.dart';

import '../../../../core/theme/app_color.dart';
import '../cubits/bond_details/bond_details_cubit.dart';
import '../cubits/bond_details/bond_details_state.dart';
import 'company_financials_card.dart';
import 'issuer_details.dart';

class CompanyPageView extends StatefulWidget {
  const CompanyPageView({super.key});

  @override
  State<CompanyPageView> createState() => _CompanyPageViewState();
}

class _CompanyPageViewState extends State<CompanyPageView> {
  int _pageIndex=0;
  final PageController _controller = PageController(initialPage: 0);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme= Theme.of(context);

    return Column(
      children: [
        Row(
          spacing: 20.w,
          children: [
            _pageViewTitle(
                theme: theme,
                title: 'ISIN Analysis',
                isSelected: _pageIndex==0,
              onTap: (){
                _controller.jumpToPage(0);
              }
            ),
            _pageViewTitle(
                theme: theme,
                title: 'Pros & Cons',
                isSelected: _pageIndex==1,
                onTap: (){
                  _controller.jumpToPage(1);
                }
            ),
          ],
        ),

        SizedBox(height: 15.h,),

        Expanded(
          child: PageView(
            controller: _controller,
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    CompanyFinancialsCard(),
                    SizedBox(height: 15.h,),
                    BlocBuilder<BondDetailsCubit,BondDetailsState>(
                      builder: (context,state) {
                        if(state is BondDetailsLoaded){
                          final issuerDetails= state.bond.issuerDetails;
                          return IssuerDetailsCard(
                            details: {
                              'Issuer Name': issuerDetails.issuerName,
                              'Type of Issuer': issuerDetails.typeOfIssuer,
                              'Sector': issuerDetails.sector,
                              'Industry': issuerDetails.industry,
                              'Issuer nature': issuerDetails.issuerNature,
                              'Corporate Identity Number (CIN)': issuerDetails.cin,
                              'Name of the Lead Manager': issuerDetails.leadManager,
                              'Registrar': issuerDetails.registrar,
                              'Name of Debenture Trustee': issuerDetails.debentureTrustee,
                            },
                          );
                        }
                        return SizedBox.shrink();
                      }
                    ),
                  ],
                ),
              ),
              CompanyProsCons()
            ],
            onPageChanged: (index){
                setState(() {
                  _pageIndex=index;
                });
            },
          ),
        )
      ],
    );
  }


  Widget _pageViewTitle({required ThemeData theme,
    required String title,
    bool isSelected=false,
    VoidCallback? onTap
  })=>
      InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 8.h),
          decoration: BoxDecoration(
              border: isSelected? Border(
                  bottom: BorderSide(
                      width: isSelected? 2:0,
                      color: AppColors.blue700
                  )
              ):null
          ),
          child: Center(
            child: Text(title,
              style: theme.textTheme.titleMedium!.copyWith(
                  color: isSelected? AppColors.blue700:null
              ),
            ),
          ),
        ),
      );
}
