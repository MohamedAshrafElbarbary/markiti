import 'package:flutter/material.dart';
import 'package:markiti_app/features/auth/forget_password/view/widgets/forget_password_view_body.dart';

class ForgetPasswordView extends StatelessWidget {
  static const String routeName = 'forget_password';
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: ForgetPasswordViewBody());
  }
}
