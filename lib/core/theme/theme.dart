import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_color.dart';

class AppTheme{

  static ThemeData dark()=>
      ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.black,
        textTheme: TextTheme(
            titleSmall: GoogleFonts.inter(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.white
            ),
            titleMedium: GoogleFonts.inter(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
                color: AppColors.white
            ),
          titleLarge: GoogleFonts.inter(
                fontSize: 45.sp,
                fontWeight: FontWeight.w500,
              color: AppColors.white
            ),
          headlineSmall: GoogleFonts.inter(
            fontSize: 26.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.white
          ),
          headlineMedium: GoogleFonts.inter(
            fontSize: 30.sp,
              fontWeight: FontWeight.bold,
              color: AppColors.white
          ),
          bodySmall: GoogleFonts.inter(
              fontSize: 15.sp,
              color: AppColors.white
          ),
          bodyMedium: GoogleFonts.inter(
              fontSize: 18.sp,
              color: AppColors.white
          ),

        ),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          unselectedItemColor: AppColors.white,
          selectedItemColor: AppColors.primaryColor,
          showUnselectedLabels: false,
          showSelectedLabels: false
        ),
        iconTheme: IconThemeData(
          color: AppColors.primaryColor
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: Colors.grey.shade900,

        )
      );

  static ThemeData light()=>
      ThemeData.light().copyWith(
        scaffoldBackgroundColor: AppColors.grey100,
        primaryColor: AppColors.white,
        textTheme: TextTheme(
            titleSmall: GoogleFonts.inter(
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
              color: AppColors.grey400
            ),
            titleMedium: GoogleFonts.inter(
                fontSize: 12.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.grey900
            ),
          titleLarge: GoogleFonts.inter(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.grey900
            ),
          headlineSmall: GoogleFonts.inter(
              fontSize: 10.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.grey400
          ),
          headlineMedium: GoogleFonts.inter(
              fontSize: 16.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.grey900
          ),
          headlineLarge: GoogleFonts.inter(
              fontSize: 26.sp,
              fontWeight: FontWeight.w600,
              color: AppColors.black
          ),
          bodySmall: GoogleFonts.inter(
              fontSize: 10.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.grey400
          ),
          bodyMedium: GoogleFonts.inter(
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
              color: AppColors.grey500
          ),
          labelSmall: GoogleFonts.inter(
              fontSize: 12.sp,
              fontWeight: FontWeight.w500,
              color: AppColors.blue700
          ),
        ),
          iconTheme: IconThemeData(
              color: AppColors.grey500
          ),
      );

  static LinearGradient shimmerGradient(BuildContext context)=>
      Theme.of(context).brightness==Brightness.light? AppTheme.lightGradient:  AppTheme.darkGradient;

  static final lightGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[
      Colors.white,
      Colors.white,
      Colors.grey[300]!,
      Colors.white,
      Colors.white,
    ],
    stops: const <double>[
      0.0,
      0.35,
      0.5,
      0.65,
      1.0,
    ],
  );

  static final darkGradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: <Color>[
        Colors.grey[900]!,
        Colors.grey[900]!,
        Colors.grey[800]!,
        Colors.grey[900]!,
        Colors.grey[900]!
      ],
      stops: const <double>[
        0.0,
        0.35,
        0.5,
        0.65,
        1.0
      ]);
}