import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tap_invest/core/theme/app_color.dart';

class CommonTextField extends StatelessWidget {

  final String hintText;
  final String? prefixSvgIcon;
  final TextEditingController textEditingController;
  final VoidCallback? onIconTap;
  final VoidCallback? onTap;
  final TextInputType keyboardType;
  final Border? border;
  final Color? bgColor;
  final BorderRadius? borderRadius;
  final Function(String)? onTextChanged;
  final EdgeInsets? contentPadding;
  final List<TextInputFormatter>? inputFormatters;
  final FocusNode? focusNode;


  const CommonTextField({super.key, required this.hintText,
    required this.textEditingController, this.onIconTap, required this.keyboardType,
    this.border, this.onTap, this.inputFormatters, this.bgColor,this.onTextChanged, this.borderRadius, this.contentPadding, this.prefixSvgIcon, this.focusNode});

  @override
  Widget build(BuildContext context) {
    final theme= Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        borderRadius: borderRadius??BorderRadius.circular(8.r),
        border: border,
        color: bgColor
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if(prefixSvgIcon!=null)
            Padding(
              padding: EdgeInsets.only(left: 15.w),
              child: SvgPicture.asset(
                prefixSvgIcon!,
                height: 20.h,
                width: 20.w,
              ),
            ),
          Expanded(
            child: TextFormField(
                onTap: onTap,
                focusNode: focusNode,
                onTapOutside: (event) {
                  FocusManager.instance.primaryFocus?.unfocus();
                },
                controller: textEditingController,
                keyboardType: keyboardType,
                inputFormatters: inputFormatters,
                decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: theme.textTheme.bodyMedium,
                  contentPadding: contentPadding??EdgeInsets.symmetric(vertical:20.h,horizontal:20.w)
                ),
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: AppColors.grey900
                ),
              validator: (value) {
                if (value!.isEmpty) {
                  return "$hintText is missing!";
                }
                return null;
              },
              onChanged: onTextChanged
            ),
          ),

          SizedBox(width: 10.w,),
        ],
      ),
    );
  }
}
