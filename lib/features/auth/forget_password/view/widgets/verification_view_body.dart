import 'package:flutter/material.dart';
import 'package:markiti_app/core/const/app_images.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';
import 'package:markiti_app/core/widgets/custom_button.dart';
import 'package:markiti_app/features/auth/forget_password/view/new_password_view.dart';
import 'package:markiti_app/features/auth/forget_password/view/widgets/custom_code_verification_text_field.dart';
import 'package:markiti_app/features/auth/forget_password/view/widgets/forget_password_app_bar.dart';

class VerificationViewBody extends StatelessWidget {
  const VerificationViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 48),
          ForgetPasswordAppBar(title: 'Verification Code'),
          const SizedBox(height: 44),
          Image.asset(Assets.assetsImagesIllustrationVerificationCodeWithEmail),
          const SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 56),
            child: SizedBox(
              height: 44,
              width: double.infinity,
              child: Text(
                'Please enter the 4 digit code sent to: You@gmail.com',
                style: AppTextStyles.medium16,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          CustomCodeVerificationTextField(),
          CustomButton(
            onTap: () {
              Navigator.pushNamed(context, NewPasswordView.routeName);
            },
            buttonName: 'Verify Code',
          ),
          const SizedBox(height: 22),
          Text(
            '00:46',
            style: AppTextStyles.semiBold16.copyWith(color: AppColor.navy),
          ),
          const SizedBox(height: 32),
          InkWell(
            onTap: () {},
            child: Text(
              'Resend code',
              style: AppTextStyles.semiBold16.copyWith(color: AppColor.navy),
            ),
          ),
        ],
      ),
    );
  }
}
