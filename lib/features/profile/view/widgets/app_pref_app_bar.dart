import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:markiti_app/core/const/app_images.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';
import 'package:markiti_app/features/profile/view/widgets/app_pref_circle_avatar.dart';

class AccountPreferencesAppBar extends StatelessWidget {
  const AccountPreferencesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          AppPrefCircleAvatar(),
          SizedBox(width: 16),
          Text(
            'welcome back ',
            style: AppTextStyles.regular14.copyWith(color: AppColor.navy),
          ),
          Spacer(),
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: SvgPicture.asset(Assets.assetsImagesCloseIconsUIA),
          ),
        ],
      ),
    );
  }
}
