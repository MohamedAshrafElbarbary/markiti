import 'package:flutter/material.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';

class CustomSignUpText extends StatelessWidget {
  final String title;

  const CustomSignUpText({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 4),
      child: Text(
        title,
        style: AppTextStyles.medium12.copyWith(color: AppColor.darkBlue900),
      ),
    );
  }
}
