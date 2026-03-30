import 'package:flutter/material.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';

class AccountPreferencesItem extends StatelessWidget {
  final String title;
  final String prefixIconPath;
  final void Function()? onTap;
  const AccountPreferencesItem({
    super.key,
    required this.title,
    required this.prefixIconPath,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 16.0),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Image.asset(prefixIconPath),
            SizedBox(width: 16),
            Text(
              title,
              style: AppTextStyles.semiBold18.copyWith(
                color: AppColor.darkBlue900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
