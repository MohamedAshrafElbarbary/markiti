import 'package:flutter/material.dart';
import 'package:markiti_app/core/api/end_points.dart';
import 'package:markiti_app/core/const/app_images.dart';
import 'package:markiti_app/core/function/cache_helper.dart';
import 'package:markiti_app/features/auth/sign_in/view/sign_in_view.dart';
import 'package:markiti_app/features/home/view/home_navigator.dart';
import 'package:markiti_app/features/onBoarding/view/on_boarding_view.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    super.initState();
    navigation();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Image.asset(Assets.assetsImagesLogoSplashScreen)],
      ),
    );
  }

  void navigation() {
    bool isOnBoardingViewSeen = CacheHelper.getBool("isOnBoardingViewSeen");
    Future.delayed(const Duration(seconds: 2), () {
      if (isOnBoardingViewSeen) {
        String? token = CacheHelper().getDataString(key: ApiKey.token);
        if (token != null) {
          Navigator.pushReplacementNamed(context, HomeNavigator.routeName);
        } else {
          Navigator.pushReplacementNamed(context, SignInView.routeName);
        }
      } else {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }
}
