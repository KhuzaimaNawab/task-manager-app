import 'package:flutter/material.dart';
import 'package:task_manager/themes/textstyle.dart';

import 'colors.dart';


class ThemesTheme {
  static TextTheme textTheme = TextTheme(
    headlineLarge: AppTextStyles.LargeHeadline,
    headlineSmall: AppTextStyles.headlineSmall,
    bodyMedium: AppTextStyles.bodyMedium,
  );

  static ColorScheme light = ColorScheme.light(
    primary: AppColors.kBackgroundColorSecondary,
    background: AppColors.kBackgroundColor,
  );

  static ThemeData themeDatalight = ThemeData(
    textTheme: textTheme,
    colorScheme: light,
  );
}
