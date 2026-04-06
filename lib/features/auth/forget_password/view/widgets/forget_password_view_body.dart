import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:markiti_app/core/const/app_images.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';
import 'package:markiti_app/core/widgets/custom_button.dart';
import 'package:markiti_app/core/widgets/custom_text_feild.dart';
import 'package:markiti_app/features/auth/forget_password/view/verification_view.dart';
import 'package:markiti_app/features/auth/forget_password/view/widgets/forget_password_app_bar.dart';

class ForgetPasswordViewBody extends StatefulWidget {
  const ForgetPasswordViewBody({super.key});

  @override
  State<ForgetPasswordViewBody> createState() => _ForgetPasswordViewBodyState();
}

class _ForgetPasswordViewBodyState extends State<ForgetPasswordViewBody> {
  late String email;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(height: 48),
          ForgetPasswordAppBar(title: 'Forget Password'),
          const SizedBox(height: 44),
          Image.asset(Assets.assetsImagesIllustrationForgotPasswordWithEmail),
          const SizedBox(height: 22),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 56),
            child: SizedBox(
              height: 44,
              width: double.infinity,
              child: Text(
                'Please enter your email address to receive a verification code',
                style: AppTextStyles.medium16,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(height: 12),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 22,
                  vertical: 2,
                ),
                child: Text(
                  'Email',
                  style: AppTextStyles.medium12.copyWith(
                    color: AppColor.darkBlue900,
                  ),
                ),
              ),
            ],
          ),
          AppCustomTextFeild(
            onSaved: (value) {
              email = value!;
            },
            hintText: 'You@gmail.com',
            prefixIcon: SvgPicture.asset(Assets.assetsImagesEmailOutline),
          ),
          const SizedBox(height: 20),
          CustomButton(
            onTap: () {
              //    context.read<RestPasswordCubit>().restPassword(email: email);
              Navigator.pushNamed(context, VerificationView.routeName);
            },
            buttonName: 'Send Code',
          ),
        ],
      ),
    );
  }
}
