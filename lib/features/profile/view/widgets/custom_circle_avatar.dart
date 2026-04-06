import 'package:flutter/material.dart';
import 'package:markiti_app/core/theme/app_color.dart';

class CustomCircleAvatar extends StatelessWidget {
  final double outterRadius;
  final double innerRadius;
  const CustomCircleAvatar({
    super.key,
    required this.outterRadius,
    required this.innerRadius,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: outterRadius,
      backgroundColor: AppColor.lightBlue100,
      child: CircleAvatar(
        radius: innerRadius,
        backgroundColor: Colors.white,
        // backgroundImage: context.read<ProfileCubit>().profilePicture != null
        //     ? FileImage(File(context.read<ProfileCubit>().profilePicture!.path))
        //     : null,
      ),
    );
  }
}
