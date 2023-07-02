import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_manager/themes/colors.dart';

class AppTextStyles {
  static TextStyle LargeHeadline = GoogleFonts.sourceSansPro(
    fontWeight: FontWeight.w700,
    fontSize: 28,
    color: AppColors.kTextColor,
  );

  static TextStyle headlineSmall = GoogleFonts.sourceSansPro(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    color: AppColors.kTextColor,
  );

  static TextStyle bodyMedium = GoogleFonts.sourceSansPro(
    fontWeight: FontWeight.w700,
    color: AppColors.kTextColor,
    fontSize: 23,
  );
}
