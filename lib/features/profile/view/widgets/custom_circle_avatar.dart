import 'package:flutter/material.dart';
import 'package:markiti_app/core/theme/app_color.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 70,
      backgroundColor: AppColor.lightBlue100,
      child: CircleAvatar(
        radius: 68,
        backgroundColor: Colors.white,
        // backgroundImage: context.read<ProfileCubit>().profilePicture != null
        //     ? FileImage(File(context.read<ProfileCubit>().profilePicture!.path))
        //     : null,
      ),
    );
  }
}
