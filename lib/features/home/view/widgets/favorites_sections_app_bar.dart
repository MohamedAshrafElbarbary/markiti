import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:markiti_app/core/const/app_images.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';
import 'package:markiti_app/features/home/view/home_navigator.dart';
import 'package:markiti_app/features/home/view/widgets/home_search_bar.dart';
import 'package:markiti_app/features/profile/view/widgets/custom_circle_avatar.dart';

class FavoritesSectionsAppBar extends StatelessWidget {
  final String title;

  const FavoritesSectionsAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            InkWell(
              onTap: () {
                Navigator.pushReplacementNamed(
                  context,
                  HomeNavigator.routeName,
                );
              },
              child: SvgPicture.asset(Assets.assetsImagesBackIcon),
            ),
            Spacer(),
            Center(
              child: Text(
                title,
                style: AppTextStyles.medium20.copyWith(
                  color: AppColor.darkBlue900,
                ),
              ),
            ),
            Spacer(),
            CustomCircleAvatar(outterRadius: 24, innerRadius: 22),
          ],
        ),
        SizedBox(height: 14),
        HomeSearchBar(
          hintText: 'What are you looking for ?',
          prefixIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
            color: AppColor.darkBlue900,
          ),
          sufixIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.tune_outlined, color: AppColor.lightBlue100),
          ),
        ),
      ],
    );
  }
}
