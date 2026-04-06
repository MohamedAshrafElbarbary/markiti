import 'package:flutter/material.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';

class HomeSearchBar extends StatelessWidget {
  final String hintText;
  final Widget prefixIcon;
  final Widget sufixIcon;
  final void Function(String)? onChanged;
  const HomeSearchBar({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    required this.sufixIcon,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(),
      child: TextFormField(
        onChanged: onChanged,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(14),
            child: prefixIcon,
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.all(14),
            child: sufixIcon,
          ),
          hintText: hintText,
          hintStyle: AppTextStyles.regular14.copyWith(color: AppColor.gray),
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
