import 'package:flutter/material.dart';
import 'package:task_manager/themes/colors.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/homepage';
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: Center(
        child: Text('hi'),
      ),
    );
  }
}
