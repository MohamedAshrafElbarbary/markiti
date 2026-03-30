import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:markiti_app/core/const/app_images.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';

class CustomDashBoardItem extends StatelessWidget {
  final String prfixIconPath;
  final String title;
  final void Function()? onTap;
  const CustomDashBoardItem({
    super.key,
    required this.prfixIconPath,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 22),
          child: Row(
            children: [
              SvgPicture.asset(prfixIconPath),
              const SizedBox(width: 16),
              Text(
                title,
                style: AppTextStyles.medium16.copyWith(
                  color: AppColor.darkBlue900,
                ),
              ),
              Spacer(),
              InkWell(
                onTap: onTap,
                child: SvgPicture.asset(Assets.assetsImagesArrowSelect),
              ),
            ],
          ),
        ),
        Divider(endIndent: 22, indent: 22, color: AppColor.navy),
      ],
    );
  }
}
