import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';
import 'package:markiti_app/core/widgets/custom_button.dart';

class PageViewItem extends StatelessWidget {
  final String imagePath;
  final String title;
  final String descerption;
  final String buttonName;
  final PageController controller;
  final int currentIndex;
  final void Function()? onTap;
  const PageViewItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.descerption,
    required this.buttonName,
    required this.controller,
    required this.currentIndex,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 164),
        SvgPicture.asset(imagePath),
        SizedBox(height: 40),
        // pacage name : dots_indicator
        DotsIndicator(
          position: currentIndex.toDouble(),
          decorator: DotsDecorator(
            activeColor: AppColor.darkBlue900,
            color: AppColor.lightBlue700,
            activeSize: Size.square(20),
            size: Size.square(16),
            spacing: EdgeInsets.symmetric(horizontal: 8),
          ),
          dotsCount: 3,
        ),
        SizedBox(height: 24),
        Text(
          title,
          style: AppTextStyles.semiBold20.copyWith(color: AppColor.darkBlue900),
        ),
        SizedBox(height: 34),
        SizedBox(
          width: MediaQuery.of(context).size.width * .55,
          child: Center(
            child: Text(
              textAlign: TextAlign.center,
              descerption,
              style: AppTextStyles.medium14.copyWith(
                color: AppColor.darkBlue900,
              ),
            ),
          ),
        ),
        Spacer(),
        CustomButton(buttonName: buttonName, onTap: onTap),
        SizedBox(height: 48),
      ],
    );
  }
}
