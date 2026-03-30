import 'package:flutter/material.dart';
import 'package:markiti_app/features/auth/forget_password/view/widgets/new_password_view_body.dart';

class NewPasswordView extends StatelessWidget {
  static const String routeName = 'newPassWOrd';
  const NewPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: NewPasswordViewBody());
  }
}
