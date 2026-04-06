import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:markiti_app/core/const/app_images.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';
import 'package:markiti_app/core/widgets/custom_button.dart';
import 'package:markiti_app/features/home/view/home_navigator.dart';
import 'package:markiti_app/features/profile/view/widgets/custom_circle_avatar.dart';

class CartView extends StatelessWidget {
  static const String routeName = 'cart_view';
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return EmptyCartView(title: 'Cart');
  }
}

class NotEmptyCartView extends StatelessWidget {
  const NotEmptyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class EmptyCartView extends StatelessWidget {
  final String title;
  const EmptyCartView({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        children: [
          SizedBox(height: 48),
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
          SizedBox(height: 30),
          Image.asset(Assets.assetsImagesStartShopping),
          SizedBox(height: 22),
          Text(
            'Your Cart is Empty',
            style: AppTextStyles.medium24.copyWith(color: AppColor.darkBlue900),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .7,
              child: Center(
                child: Text(
                  'Check our big offers, fresh products and fill your cart with items',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.medium14.copyWith(color: AppColor.navy),
                ),
              ),
            ),
          ),
          CustomButton(
            onTap: () {
              Navigator.pushReplacementNamed(context, HomeNavigator.routeName);
            },
            buttonName: 'Start Shopping',
          ),
        ],
      ),
    );
  }
}
