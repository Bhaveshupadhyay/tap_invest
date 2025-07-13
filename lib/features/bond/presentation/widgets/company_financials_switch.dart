import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tap_invest/core/theme/app_color.dart';

class CompanyFinancialsSwitch extends StatelessWidget {
  final void Function(int) onChanged;
  final int currentIndex;
  const CompanyFinancialsSwitch({super.key, required this.onChanged, required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.r),
      decoration: BoxDecoration(
        color: AppColors.neutral100,
        borderRadius: BorderRadius.circular(99.r),
        border: Border.all(
          color: AppColors.neutral200,
          width: 1
        )
      ),
      child: Row(
        spacing: 5.w,
        children: [
          _item(
              context: context,
              text: 'EBITDA',
              isSelected: currentIndex==0,
              onTap: (){
                onChanged(0);
              },
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(99.r),
              bottomLeft: Radius.circular(99.r),
            ),
          ),
          _item(
              context: context,
              text: 'Revenue',
              isSelected: currentIndex==1,
              onTap: (){
                onChanged(1);
              },
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(99.r),
              bottomRight: Radius.circular(99.r),
            ),
          ),
        ],
      ),
    );
  }

  Widget _item({required BuildContext context,
    required String text,
    bool isSelected=false,
    required VoidCallback onTap,
    required BorderRadius borderRadius,
  })=>
      InkWell(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 5.h,horizontal: 10.w),
          decoration: isSelected?
          BoxDecoration(
            color: AppColors.white,
            borderRadius: borderRadius,
          ):null,
          child: Text(text,
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: isSelected? AppColors.neutral900 : AppColors.neutral500
            ),
          ),
        ),
      );
}
