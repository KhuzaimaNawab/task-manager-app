import 'package:flutter/material.dart';

class AppColors {
  AppColors._internal();

  static final _instance = AppColors._internal();

  factory AppColors() {
    return _instance;
  }

  static Color kBackgroundColor = const Color(0xff292F3F);
  static Color kBackgroundColorSecondary = const Color(0xff384156);
  static Color kWhiteColor = const Color(0xffffffff);
  static Color kYellowColor = const Color(0XFFF8F105);
  static Color kCapsuleBlueColor = const Color(0XFFF5BA93);
  static Color kOrangeColor = const Color(0XFFFF7618);
  static Color kTextColor = const Color(0XFFD9D9D9);
}
