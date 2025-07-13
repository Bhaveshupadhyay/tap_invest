import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theme/app_color.dart';

class CommonDivider extends StatelessWidget {
  final Color? color;
  final double? verticalSpacing;
  const CommonDivider({super.key, this.color, this.verticalSpacing});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: verticalSpacing?? 5.h,),
        Divider(color: color??AppColors.grey200,),
        SizedBox(height: verticalSpacing??5.h,),
      ],
    );
  }
}
