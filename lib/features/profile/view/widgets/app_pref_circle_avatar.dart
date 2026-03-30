import 'package:flutter/material.dart';
import 'package:markiti_app/core/theme/app_color.dart';

class AppPrefCircleAvatar extends StatelessWidget {
  const AppPrefCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 40,
      backgroundColor: AppColor.lightBlue100,
      child: CircleAvatar(radius: 38, backgroundColor: Colors.white),
    );
  }
}
