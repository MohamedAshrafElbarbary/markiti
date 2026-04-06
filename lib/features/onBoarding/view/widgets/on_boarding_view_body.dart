import 'package:flutter/material.dart';
import 'package:markiti_app/core/const/app_images.dart';
import 'package:markiti_app/core/function/cache_helper.dart';
import 'package:markiti_app/features/auth/sign_in/view/sign_in_view.dart';
import 'package:markiti_app/features/onBoarding/view/widgets/page_view_item.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  final PageController pageController = PageController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      onPageChanged: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      children: [
        PageViewItem(
          onTap: () {
            pageController.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          },
          currentIndex: currentIndex,
          controller: pageController,
          imagePath: Assets.assetsImagesOnboarding1,
          title: 'Welcome to Marketi',
          descerption:
              'Discover a world of endless possibilities and shop from the comfort of your fingertips Browse through a wide range of products, from fashion and electronics to home.',
          buttonName: 'Next',
        ),
        PageViewItem(
          onTap: () {
            pageController.nextPage(
              duration: Duration(milliseconds: 300),
              curve: Curves.easeIn,
            );
          },
          controller: pageController,
          currentIndex: currentIndex,
          imagePath: Assets.assetsImagesOnboarding2,
          title: 'Easy to Buy',
          descerption:
              'Find the perfect item that suits your style and needs With secure payment options and fast delivery, shopping has never been easier.',
          buttonName: 'Next',
        ),
        PageViewItem(
          onTap: () {
            CacheHelper.setBool('isOnBoardingViewSeen', true);
            Navigator.pushReplacementNamed(context, SignInView.routeName);
          },
          controller: pageController,
          currentIndex: currentIndex,
          imagePath: Assets.assetsImagesOnboarding3,
          title: 'Wonderful User Experience',
          descerption:
              'Start exploring now and experience the convenience of online shopping at its best.',
          buttonName: 'Get Start',
        ),
      ],
    );
  }
}
