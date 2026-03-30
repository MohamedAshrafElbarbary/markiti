import 'package:flutter/material.dart';
import 'package:markiti_app/features/auth/forget_password/view/widgets/verification_view_body.dart';

class VerificationView extends StatelessWidget {
  static const String routeName = 'VERIFICATION';
  const VerificationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: VerificationViewBody());
  }
}
