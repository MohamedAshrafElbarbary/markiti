import 'package:flutter/material.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';

class AppCustomTextFeild extends StatelessWidget {
  final String hintText;
  final Widget prefixIcon;
  final void Function(String?)? onSaved;
  const AppCustomTextFeild({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: TextFormField(
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'field is required';
          }
          return null;
        },
        onSaved: onSaved,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(14),
            child: prefixIcon,
          ),
          hintText: hintText,
          hintStyle: AppTextStyles.regular12,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.lightBlue700),
            borderRadius: BorderRadius.circular(14),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.lightBlue700),
            borderRadius: BorderRadius.circular(14),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.lightBlue700),
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}
