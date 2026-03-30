import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:markiti_app/core/const/app_images.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';
import 'package:markiti_app/core/widgets/app_password_text_feild.dart';
import 'package:markiti_app/core/widgets/custom_button.dart';
import 'package:markiti_app/core/widgets/custom_checked_box.dart';
import 'package:markiti_app/core/widgets/custom_text_feild.dart';
import 'package:markiti_app/features/auth/forget_password/view/forget_password_view.dart';
import 'package:markiti_app/features/auth/sign_in/manager/sign_in_cubit.dart';
import 'package:markiti_app/features/auth/sign_in/view/widgets/social_auth_row.dart';
import 'package:markiti_app/features/auth/sign_up/view/sign_up_view.dart';

class SignInViewBody extends StatefulWidget {
  const SignInViewBody({super.key});

  @override
  State<SignInViewBody> createState() => _SignInViewBodyState();
}

class _SignInViewBodyState extends State<SignInViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * .18),
            Image.asset(Assets.assetsImagesLogoSplashScreen),
            SizedBox(height: 32),
            AppCustomTextFeild(
              onSaved: (value) {
                email = value!;
              },
              hintText: 'Username or Email',
              prefixIcon: SvgPicture.asset(Assets.assetsImagesEmailOutline),
            ),
            const SizedBox(height: 14),
            AppPasswordTextFeild(
              onSaved: (value) {
                password = value!;
              },
              hintText: '................',
              prefixIcon: SvgPicture.asset(Assets.assetsImagesPasswordIcon),
            ),
            const SizedBox(height: 8),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                children: [
                  CustomCheckbox(),
                  const SizedBox(width: 4),
                  const Text('Remember Me', style: AppTextStyles.regular12),
                  const Spacer(),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                        context,
                        ForgetPasswordView.routeName,
                      );
                    },
                    child: Text(
                      'Forgot Password?',
                      style: AppTextStyles.medium12.copyWith(
                        color: AppColor.lightBlue100,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            CustomButton(
              onTap: () {
                //SIgn in logic here
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  context.read<SignInCubit>().signIn(
                    email: email,
                    password: password,
                  );
                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                  });
                }
              },
              buttonName: 'Log In',
            ),
            const SizedBox(height: 14),
            Text(
              'Or Continue With',
              style: AppTextStyles.regular12.copyWith(color: AppColor.navy),
            ),
            const SizedBox(height: 16),
            SocialAuthRow(),
            SizedBox(height: 14),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Are you new in Marketi ', style: AppTextStyles.regular12),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, SignUpView.routeName);
                  },
                  child: Text(
                    'register?',
                    style: AppTextStyles.regular12.copyWith(
                      color: AppColor.lightBlue100,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
