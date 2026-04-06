import 'package:flutter/material.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';
import 'package:markiti_app/features/profile/view/profile_view.dart';
import 'package:markiti_app/features/profile/view/widgets/custom_circle_avatar.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 14),
      child: (Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, ProfileView.routeName);
            },
            child: CustomCircleAvatar(outterRadius: 25, innerRadius: 23),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text('Hi mohamed !', style: AppTextStyles.medium20),
          ),
          Spacer(),
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications_none_outlined,
                  size: 30,
                  color: AppColor.lightBlue100,
                ),
              ),
              Positioned(
                right: 8,
                top: 10,
                child: Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: AppColor.lightBlue100,
                    shape: BoxShape.circle,
                  ),
                ),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
