import 'package:flutter/material.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';

class CustomButton extends StatelessWidget {
  final String buttonName;
  final void Function()? onTap;
  const CustomButton({super.key, required this.buttonName, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Container(
          width: double.infinity,
          height: 48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(14),
            color: AppColor.lightBlue100,
          ),
          child: Center(
            child: Text(
              buttonName,
              style: AppTextStyles.medium18.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
