import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tap_invest/features/bond/presentation/cubits/bond_details/bond_details_cubit.dart';
import 'package:tap_invest/features/bond/presentation/cubits/bond_details/bond_details_state.dart';

import '../../../../core/theme/app_color.dart';

class CompanyProsCons extends StatelessWidget {
  const CompanyProsCons({super.key});

  @override
  Widget build(BuildContext context) {
    final theme= Theme.of(context);

    return BlocBuilder<BondDetailsCubit,BondDetailsState>(
      builder: (context,state) {
        if(state is BondDetailsLoaded){
          final pros= state.bond.prosAndCons.pros;
          final cons= state.bond.prosAndCons.cons;

          return Card(
            elevation: 1,
            color: AppColors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 10.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Pros and Cons',
                        style: theme.textTheme.titleLarge
                    ),

                    SizedBox(height: 20.h,),

                    Text('Pros',
                      style: theme.textTheme.headlineMedium?.copyWith(
                          color: AppColors.green700
                      ),
                    ),

                    SizedBox(height: 15.h,),

                    ...List.generate(pros.length, (index)=>
                        _prosCon(theme: theme, text: pros[index]),),

                    SizedBox(height: 5.h,),
                    Text('Cons',
                      style: theme.textTheme.headlineMedium?.copyWith(
                          color: AppColors.amber700
                      ),
                    ),

                    SizedBox(height: 15.h,),

                    ...List.generate(cons.length, (index)=>
                        _prosCon(theme: theme, text: cons[index],isPros: false),),
                  ],
                ),
              ),
            ),
          );
        }
        return SizedBox.shrink();
      }
    );
  }

  Widget _prosCon({required ThemeData theme,required String text, bool isPros=true,})=>
      Padding(
        padding: EdgeInsets.only(bottom: 15.h),
        child: Row(
          spacing: 10.w,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(8.r),
              decoration: BoxDecoration(
                color: (isPros? AppColors.greenCheck : AppColors.amber600).withValues(
                  alpha: 0.12
                ),
                shape: BoxShape.circle,
              ),
              child: SvgPicture.asset(isPros?
              'assets/images/ic_check.svg':  'assets/images/ic_error.svg',
                width: 9.w,
                height: 9.w,
              ),
            ),
            Expanded(
              child: Text(text,
                style: theme.textTheme.titleMedium?.copyWith(
                  color: isPros? AppColors.grey700: AppColors.slate500
                ),
              ),
            ),
          ],
        ),
      );


}
