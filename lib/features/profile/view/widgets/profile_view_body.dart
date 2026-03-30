import 'package:flutter/material.dart';
import 'package:markiti_app/core/const/app_images.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';
import 'package:markiti_app/features/profile/view/account_preferences_view.dart';
import 'package:markiti_app/features/profile/view/widgets/custom_dash_board_item.dart';
import 'package:markiti_app/features/profile/view/widgets/custom_dash_board_switch.dart';
import 'package:markiti_app/features/profile/view/widgets/custom_stack_profile_pic.dart';
import 'package:markiti_app/features/profile/view/widgets/profile_app_bar.dart';
import 'package:markiti_app/features/profile/view/widgets/rating_star.dart';

class ProfileViewBody extends StatelessWidget {
  const ProfileViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 48),
        ProfileAppBar(title: 'My Profile'),
        const SizedBox(height: 30),
        CustomStackProfilePic(),
        const SizedBox(height: 30),
        CustomDashBoardItem(
          prfixIconPath: Assets.assetsImagesUserIcon,
          title: 'Account Preferences',
          onTap: () {
            Navigator.of(context).pushNamed(AccountPreferencesView.routeName);
          },
        ),
        CustomDashBoardItem(
          prfixIconPath: Assets.assetsImagesCreditCardIconUIA,
          title: 'Subscription & Payment',
          onTap: () {},
        ),
        CustomDashBoardSwitch(
          prfixIconPath: Assets.assetsImagesNotificationIcon,
          title: 'App Notifications',
        ),
        CustomDashBoardSwitch(
          prfixIconPath: Assets.assetsImagesDarkModeIcon,
          title: 'Dark Mode',
        ),
        CustomDashBoardItem(
          prfixIconPath: Assets.assetsImagesRateIcon,
          title: 'Rate Us',
          onTap: () {
            showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Center(
                    child: Text(
                      'How would you rate us ?',
                      style: AppTextStyles.medium20,
                    ),
                  ),
                  content: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.4,
                    child: Column(
                      children: [
                        Image.asset(Assets.assetsImagesLogoSplashScreen),
                        StarRating(),
                      ],
                    ),
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {},
                      child: Text('ok', style: AppTextStyles.medium20),
                    ),
                    SizedBox(width: 20),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'Cancel',
                        style: AppTextStyles.medium20.copyWith(
                          color: AppColor.lightBlue100,
                        ),
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ),
        CustomDashBoardItem(
          prfixIconPath: Assets.assetsImagesFeedbackIcon,
          title: 'Provide Feedback',
          onTap: () {},
        ),
        InkWell(
          onTap: () {},
          child: CustomDashBoardItem(
            prfixIconPath: Assets.assetsImagesLogOutIcon,
            title: 'Log Out',
            onTap: () {},
          ),
        ),
      ],
    );
  }
}
