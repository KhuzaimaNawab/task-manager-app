import 'package:flutter/material.dart';
import 'package:task_manager/themes/colors.dart';
import 'package:task_manager/themes/textstyle.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final IconData icon;
  final bool isPass;
  final Function(String)? onChange;
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.label,
    required this.icon,
    this.isPass = false, required this.onChange,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: size.width * 0.35,
      child: TextFormField(
        onChanged: onChange,
        style: AppTextStyles.headlineSmall.copyWith(
          color: AppColors.kWhiteColor,
        ),
        controller: controller,
        obscureText: isPass,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: AppColors.kOrangeColor,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25.0),
            borderSide: BorderSide(
              color: AppColors.kOrangeColor,
              width: 2.0,
            ),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(
              left: 20,
              right: 15,
            ),
            child: Icon(
              icon,
              color: AppColors.kWhiteColor,
            ),
          ),
          label: Text(
            label,
            style: AppTextStyles.headlineSmall,
          ),
        ),
      ),
    );
  }
}
