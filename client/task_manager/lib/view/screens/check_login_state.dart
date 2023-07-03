import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:task_manager/controller/AuthController.dart';
import 'package:task_manager/view/screens/home_page.dart';
import 'package:task_manager/view/screens/login_page.dart';

class CheckLoginState extends StatelessWidget {
  const CheckLoginState({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AuthController());
    final result = Get.find<AuthController>().isLoggedIn;
    print("result: $result");
    if (result == true) {
      return const HomePage();
    } else {
      return const LoginPage();
    }
  }
}
