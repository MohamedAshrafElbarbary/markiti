import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:markiti_app/core/const/app_images.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';
import 'package:markiti_app/features/profile/view/widgets/custom_chart_badge.dart';

class ProfileAppBar extends StatelessWidget {
  final String title;
  const ProfileAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 14, right: 14),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(Assets.assetsImagesBackIcon),
          ),
          Spacer(),
          Text(title, style: AppTextStyles.semiBold20),
          Spacer(),
          CustomChartBadge(),
        ],
      ),
    );
  }
}
