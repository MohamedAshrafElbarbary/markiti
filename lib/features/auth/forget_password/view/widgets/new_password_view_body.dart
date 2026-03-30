import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:markiti_app/core/const/app_images.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';
import 'package:markiti_app/core/widgets/app_password_text_feild.dart';
import 'package:markiti_app/core/widgets/custom_button.dart';
import 'package:markiti_app/features/auth/forget_password/view/congratulations_view.dart';
import 'package:markiti_app/features/auth/forget_password/view/widgets/forget_password_app_bar.dart';

class NewPasswordViewBody extends StatelessWidget {
  const NewPasswordViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 48),
          ForgetPasswordAppBar(title: 'Create New Password'),
          const SizedBox(height: 44),
          Image.asset(Assets.assetsImagesIllustrationCreateNewPassword),
          const SizedBox(height: 22),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 56),
            child: SizedBox(
              height: 44,
              width: double.infinity,
              child: Text(
                'New password must be different from last password',
                style: AppTextStyles.medium16,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          const SizedBox(height: 22),
          TextFieldDes(title: 'PassWord'),
          AppPasswordTextFeild(
            hintText: '..............',
            prefixIcon: SvgPicture.asset(Assets.assetsImagesPasswordIcon),
          ),
          TextFieldDes(title: 'Confirm Password'),
          AppPasswordTextFeild(
            hintText: '..............',
            prefixIcon: SvgPicture.asset(Assets.assetsImagesPasswordIcon),
          ),
          const SizedBox(height: 22),
          CustomButton(
            onTap: () {
              Navigator.pushNamed(context, CongratulationsView.routeName);
            },
            buttonName: 'Save Password',
          ),
        ],
      ),
    );
  }
}

class TextFieldDes extends StatelessWidget {
  final String title;
  const TextFieldDes({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 2),
          child: Text(
            title,
            style: AppTextStyles.medium12.copyWith(color: AppColor.darkBlue900),
          ),
        ),
      ],
    );
  }
}
