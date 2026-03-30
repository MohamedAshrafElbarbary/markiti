import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:markiti_app/core/const/app_images.dart';
import 'package:markiti_app/core/widgets/app_password_text_feild.dart';
import 'package:markiti_app/core/widgets/custom_button.dart';
import 'package:markiti_app/core/widgets/custom_text_feild.dart';
import 'package:markiti_app/features/auth/sign_in/view/widgets/social_auth_row.dart';
import 'package:markiti_app/features/auth/sign_up/manager/sign_up_cubit.dart';
import 'package:markiti_app/features/auth/sign_up/view/widgets/custom_sign_up_text.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String yourName;
  late String userName;
  late String phone;
  late String email;
  late String password;
  late String confirmPassword;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Center(
                  child: Image.asset(
                    Assets.assetsImagesLogoSplashScreen,
                    width: MediaQuery.of(context).size.width * .5,
                    height: MediaQuery.of(context).size.height * .25,
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * .06,
                  left: 14,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SvgPicture.asset(Assets.assetsImagesBackIcon),
                  ),
                ),
              ],
            ),
            CustomSignUpText(title: 'Your Name'),
            AppCustomTextFeild(
              onSaved: (value) {
                yourName = value!;
              },
              hintText: 'Full Name',
              prefixIcon: SvgPicture.asset(Assets.assetsImagesNameIcon),
            ),
            CustomSignUpText(title: 'Username'),
            AppCustomTextFeild(
              onSaved: (value) {
                userName = value!;
              },
              hintText: 'Username',
              prefixIcon: SvgPicture.asset(Assets.assetsImagesUserIcon),
            ),
            CustomSignUpText(title: 'Phone Number'),
            AppCustomTextFeild(
              onSaved: (value) {
                phone = value!;
              },
              hintText: '+20 1501142409 ',
              prefixIcon: SvgPicture.asset(Assets.assetsImagesPhoneIcon),
            ),
            CustomSignUpText(title: 'Email'),
            AppCustomTextFeild(
              onSaved: (value) {
                email = value!;
              },
              hintText: 'You@gmail.com',
              prefixIcon: SvgPicture.asset(Assets.assetsImagesEmailOutline),
            ),
            CustomSignUpText(title: 'Password'),
            AppPasswordTextFeild(
              onSaved: (value) {
                password = value!;
              },
              hintText: '......................',
              prefixIcon: SvgPicture.asset(Assets.assetsImagesPasswordIcon),
            ),
            CustomSignUpText(title: 'Confirm Password'),
            AppPasswordTextFeild(
              onSaved: (value) {
                confirmPassword = value!;
              },
              hintText: '.....................',
              prefixIcon: SvgPicture.asset(Assets.assetsImagesPasswordIcon),
            ),
            const SizedBox(height: 14),
            CustomButton(
              onTap: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  context.read<SignUpCubit>().sinUp(
                    yourName: yourName,
                    userName: userName,
                    phone: phone,
                    email: email,
                    password: password,
                    confirmPassword: confirmPassword,
                  );
                } else {
                  setState(() {
                    autovalidateMode = AutovalidateMode.always;
                  });
                }
              },
              buttonName: 'sign Up',
            ),
            const SizedBox(height: 12),
            SocialAuthRow(),
          ],
        ),
      ),
    );
  }
}
