import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tap_invest/core/common/widgets/common_divider.dart';
import 'package:tap_invest/core/theme/app_color.dart';

class IssuerDetailsCard extends StatelessWidget {
  final Map<String, String> details;
  const IssuerDetailsCard({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
      elevation: 1,
      color: AppColors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10.h,),
          Padding(
            padding: EdgeInsets.symmetric( horizontal: 15.w),
            child: Row(
              children: [
                SvgPicture.asset('assets/images/ic_contact.svg',
                width: 18.w,
                height: 18.w,
                ),
                SizedBox(width: 8.w),
                Text(
                  'Issuer Details',
                  style: theme.textTheme.titleMedium,
                ),
              ],
            ),
          ),
          CommonDivider(),

          Padding(
            padding: EdgeInsets.symmetric(vertical:5.h,horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ...details.entries.map((entry) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 16.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // label
                        Text(
                          entry.key,
                          style: theme.textTheme.labelSmall,
                        ),
                        SizedBox(height: 4.h),
                        // value
                        Text(
                          entry.value.isNotEmpty ? entry.value : '-',
                          style: theme.textTheme.titleMedium,
                        ),
                      ],
                    ),
                  );
                }),
              ],
            ),
          )

        ],
      ),
    );
  }
}
