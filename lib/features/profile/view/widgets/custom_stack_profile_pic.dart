import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:markiti_app/core/const/app_images.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';
import 'package:markiti_app/features/profile/view/widgets/custom_circle_avatar.dart';

class CustomStackProfilePic extends StatelessWidget {
  const CustomStackProfilePic({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset(Assets.assetsImagesShapesCircle),
        Positioned(
          top: 15,
          width: MediaQuery.of(context).size.width * .75,
          child: CustomCircleAvatar(outterRadius: 70, innerRadius: 68),
        ),
        Positioned(
          bottom: 35,
          left: MediaQuery.of(context).size.width * .22,
          // show user name and user name in app
          child: Text('Yousef Ragab', style: AppTextStyles.semiBold18),
        ),
        Positioned(
          bottom: 16,
          left: MediaQuery.of(context).size.width * .3,
          child: Text('@Yousef', style: AppTextStyles.medium14),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height * .12,
          right: MediaQuery.of(context).size.width * .20,
          child: IconButton(
            onPressed: () {
              // ImagePicker().pickImage(source: ImageSource.gallery).then((
              //   value,
              // ) {
              //   context.read<ProfileCubit>().updateProfilePicture(value!);
              // });
            },
            icon: Icon(
              Icons.camera_alt_outlined,
              size: 35,
              color: Colors.blueAccent,
            ),
          ),
        ),
      ],
    );
  }
}
