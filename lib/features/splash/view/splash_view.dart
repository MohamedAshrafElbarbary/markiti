import 'package:flutter/material.dart';
import 'package:markiti_app/features/splash/view/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  static const String routeName = '/';
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SplashViewBody());
  }
}
