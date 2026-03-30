import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:markiti_app/core/const/app_images.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';

class CustomChartBadge extends StatelessWidget {
  const CustomChartBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 50,
      child: Stack(
        children: [
          Center(child: SvgPicture.asset(Assets.assetsImagesCart)),
          Positioned(
            right: 5,
            top: 2,
            child: Container(
              width: 18,
              height: 22,
              decoration: BoxDecoration(
                color: AppColor.darkBlue100,
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.all(Radius.elliptical(100, 60)),
              ),
              child: Center(
                child: Text(
                  '3',
                  style: AppTextStyles.semiBold10.copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
