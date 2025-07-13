import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tap_invest/core/theme/app_color.dart';
import 'package:tap_invest/features/bond/presentation/widgets/company_financials_switch.dart';
import 'package:tap_invest/features/bond/presentation/widgets/financial_chart.dart';

import '../cubits/bond_details/bond_details_cubit.dart';
import '../cubits/bond_details/bond_details_state.dart';

class CompanyFinancialsCard extends StatefulWidget {
  const CompanyFinancialsCard({super.key});

  @override
  State<CompanyFinancialsCard> createState() => _CompanyFinancialsCardState();
}

class _CompanyFinancialsCardState extends State<CompanyFinancialsCard> {
  int _switchCurrentIndex=0;

  @override
  Widget build(BuildContext context) {
    final theme= Theme.of(context);

    return Card(
      elevation: 1,
      color: AppColors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('company financials'.toUpperCase(),
                  style: theme.textTheme.headlineSmall?.copyWith(
                    letterSpacing: 1
                  ),
                ),
                CompanyFinancialsSwitch(
                  currentIndex: _switchCurrentIndex,
                  onChanged: (index){
                    setState(() {
                      _switchCurrentIndex= index;
                    });
                  },
                ),
              ],
            ),
            BlocBuilder<BondDetailsCubit,BondDetailsState>(
              builder: (context,state) {
                if(state is BondDetailsLoaded){
                  return FinancialChart(monthlyData: state.bond.financials.ebitda, isEbitda: _switchCurrentIndex==0,);
                }
                return SizedBox.shrink();
              }
            ),

          ],
        ),
      ),
    );
  }
}
