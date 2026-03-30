import 'package:flutter/material.dart';
import 'package:markiti_app/core/const/app_images.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/features/profile/view/widgets/account_preferences_item.dart';
import 'package:markiti_app/features/profile/view/widgets/app_pref_app_bar.dart';

class AccountPreferencesView extends StatelessWidget {
  static const String routeName = 'account_preferences';

  const AccountPreferencesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 48),
          AccountPreferencesAppBar(),
          const SizedBox(height: 16),
          Divider(color: AppColor.gray, thickness: 1),
          const SizedBox(height: 44),
          AccountPreferencesItem(
            onTap: () {},
            title: 'Buy Again',
            prefixIconPath: Assets.assetsImagesBuyAgain,
          ),
          AccountPreferencesItem(
            onTap: () {},
            title: 'My Orders',
            prefixIconPath: Assets.assetsImagesBag,
          ),
          AccountPreferencesItem(
            onTap: () {},
            title: 'Payments',
            prefixIconPath: Assets.assetsImagesCreditCard,
          ),
          AccountPreferencesItem(
            onTap: () {},
            title: 'Account Settings',
            prefixIconPath: Assets.assetsImagesSettingIcon,
          ),
          AccountPreferencesItem(
            onTap: () {},
            title: 'Support',
            prefixIconPath: Assets.assetsImagesSuport,
          ),
        ],
      ),
    );
  }
}
