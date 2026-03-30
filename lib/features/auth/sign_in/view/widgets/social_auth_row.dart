import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:markiti_app/core/const/app_images.dart';

class SocialAuthRow extends StatelessWidget {
  const SocialAuthRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {},
          child: SvgPicture.asset(Assets.assetsImagesGoogleIcon),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: InkWell(
            onTap: () {},
            child: SvgPicture.asset(Assets.assetsImagesAppleIcon),
          ),
        ),
        InkWell(
          onTap: () {},
          child: SvgPicture.asset(Assets.assetsImagesFacebokIcon),
        ),
      ],
    );
  }
}
