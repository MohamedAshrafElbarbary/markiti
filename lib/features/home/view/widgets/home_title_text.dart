import 'package:flutter/material.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';

class HomeTitleText extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const HomeTitleText({super.key, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 14, bottom: 8),
      child: Row(
        children: [
          Text(
            text,
            style: AppTextStyles.semiBold20.copyWith(
              color: AppColor.darkBlue900,
            ),
          ),
          Spacer(),
          InkWell(
            onTap: onTap,
            child: Text(
              'View all',
              style: AppTextStyles.medium16.copyWith(
                color: AppColor.lightBlue100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
