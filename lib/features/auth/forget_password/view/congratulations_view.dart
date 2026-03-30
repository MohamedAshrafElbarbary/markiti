import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:markiti_app/core/const/app_images.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';
import 'package:markiti_app/core/widgets/custom_button.dart';
import 'package:markiti_app/features/auth/sign_in/view/sign_in_view.dart';

class CongratulationsView extends StatelessWidget {
  static const String routeName = 'cong';
  const CongratulationsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 48),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SvgPicture.asset(Assets.assetsImagesBackIcon),
            ),
          ),
          const SizedBox(height: 44),
          Center(
            child: SvgPicture.asset(
              Assets.assetsImagesIllustrationCongratulations,
            ),
          ),
          const SizedBox(height: 22),
          Center(
            child: Text(
              'Congratulations',
              style: AppTextStyles.medium24.copyWith(
                color: AppColor.darkBlue900,
              ),
            ),
          ),
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: SizedBox(
              height: 44,
              width: double.infinity,
              child: Text(
                'You have updated the password. please login again with your latest password',
                style: AppTextStyles.medium16,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 30),
          CustomButton(
            onTap: () {
              Navigator.pushReplacementNamed(context, SignInView.routeName);
            },
            buttonName: 'Log In',
          ),
        ],
      ),
    );
  }
}
