import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:markiti_app/core/const/app_images.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';

class ForgetPasswordAppBar extends StatelessWidget {
  final String title;
  const ForgetPasswordAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(Assets.assetsImagesBackIcon),
          ),
        ),
        Text(title, style: AppTextStyles.medium16),
      ],
    );
  }
}
