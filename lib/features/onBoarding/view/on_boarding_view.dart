import 'package:flutter/material.dart';
import 'package:markiti_app/features/onBoarding/view/widgets/on_boarding_view_body.dart';

class OnBoardingView extends StatelessWidget {
  static const String routeName = 'on-Boarding';
  const OnBoardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: OnBoardingViewBody());
  }
}
