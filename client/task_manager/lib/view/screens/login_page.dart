import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_manager/themes/colors.dart';
import 'package:task_manager/themes/textstyle.dart';
import 'package:task_manager/view/widgets/custom_textfield.dart';

class LoginPage extends StatelessWidget {
  static const routeName = '/login-page';
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();
    bool obsureText = true;
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Welcome To Task Management',
              style: AppTextStyles.LargeHeadline,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Login',
              style: AppTextStyles.bodyMedium.copyWith(
                color: AppColors.kOrangeColor,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Form(
              key: formKey,
              child: Column(
                children: [
                  CustomTextField(
                    controller: emailController,
                    label: 'Enter Email',
                    icon: Icons.email,
                    onChange: (val) {},
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    controller: passController,
                    label: 'Enter Password',
                    icon: Icons.key,
                    isPass: obsureText,
                    onChange: (val) {},
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {},
              child: SizedBox(
                width: 60,
                height: 35,
                child: Center(
                  child: Text(
                    'Login',
                    style: AppTextStyles.headlineSmall,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                  style: AppTextStyles.headlineSmall,
                ),
                TextButton(
                  onPressed: () {
                    Get.toNamed('/sign-up');
                  },
                  child: Text(
                    'Sign up',
                    style: AppTextStyles.headlineSmall.copyWith(
                      fontWeight: FontWeight.bold,
                      color: AppColors.kWhiteColor,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
