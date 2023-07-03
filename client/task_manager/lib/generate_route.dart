import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/view/screens/home_page.dart';
import 'package:task_manager/view/screens/login_page.dart';
import 'package:task_manager/view/screens/sign_up_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginPage.routeName:
      return GetPageRoute(
        settings: settings,
        page: () => const LoginPage(),
        transition: Transition.fade,
      );
    case SignUpPage.routeName:
      return GetPageRoute(
        settings: settings,
        page: () => const SignUpPage(),
        transition: Transition.fade,
      );
    case HomePage.routeName:
      return GetPageRoute(
        settings: settings,
        page: () => const HomePage(),
        transition: Transition.fade,
      );
    default:
      return MaterialPageRoute(builder: (_) => const LoginPage());
  }
}
