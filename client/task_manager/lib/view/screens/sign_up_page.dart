import 'package:flutter/material.dart';
import 'package:task_manager/themes/colors.dart';
import 'package:task_manager/themes/textstyle.dart';
import 'package:task_manager/view/widgets/custom_textfield.dart';

class SignUpPage extends StatelessWidget {
  static const routeName = '/sign-up';
  const SignUpPage({super.key});

  

  @override
  Widget build(BuildContext context) {
    TextEditingController firstNameController = TextEditingController();
    TextEditingController lastNameController = TextEditingController();
    TextEditingController phoneNumberController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    final formKey = GlobalKey<FormState>();
    return Scaffold(
      backgroundColor: AppColors.kBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Sign up',
          style: AppTextStyles.bodyMedium.copyWith(
            color: AppColors.kOrangeColor,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              key: formKey,
              child: Column(
                children: [
                  CustomTextField(
                      controller: firstNameController,
                      label: 'First Name',
                      icon: Icons.person,
                      onChange: (val) {}),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                      controller: lastNameController,
                      label: 'Last Name',
                      icon: Icons.person,
                      onChange: (val) {}),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                      controller: phoneNumberController,
                      label: 'Phone Number',
                      icon: Icons.person,
                      onChange: (val) {}),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                      controller: emailController,
                      label: 'Email',
                      icon: Icons.person,
                      onChange: (val) {}),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                      controller: passwordController,
                      label: 'Password',
                      icon: Icons.person,
                      onChange: (val) {}),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                      controller: confirmPasswordController,
                      label: 'Confirm Password',
                      icon: Icons.person,
                      onChange: (val) {}),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: SizedBox(
                width: 60,
                height: 35,
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: AppTextStyles.headlineSmall,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
