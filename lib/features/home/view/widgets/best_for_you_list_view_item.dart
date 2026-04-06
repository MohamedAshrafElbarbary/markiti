import 'package:flutter/material.dart';
import 'package:markiti_app/core/const/app_images.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';

class BestForYouListViewItem extends StatelessWidget {
  const BestForYouListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      width: MediaQuery.of(context).size.width * 0.46,
      height: MediaQuery.of(context).size.width * 0.5,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.lightBlue900,
              ),
              width: MediaQuery.of(context).size.width * 0.45,
              height: MediaQuery.of(context).size.width * 0.3,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(Assets.assetsImagesSmartWatch),
                  Positioned(
                    top: 5,
                    right: 5,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(
                          size: 30,
                          Icons.favorite_border_outlined,
                          color: AppColor.darkBlue900,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: Row(
              children: [
                Text(
                  '499 LE',
                  style: AppTextStyles.medium12.copyWith(
                    color: AppColor.darkBlue900,
                  ),
                ),
                Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.star_border_outlined,
                    color: AppColor.darkBlue900,
                  ),
                ),
                Text(
                  '4.9',
                  style: AppTextStyles.medium12.copyWith(
                    color: AppColor.darkBlue900,
                  ),
                ),
              ],
            ),
          ),
          Text(
            'Smart Watch',
            style: AppTextStyles.medium12.copyWith(color: AppColor.darkBlue900),
          ),
          const SizedBox(height: 4),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                      side: const BorderSide(
                        color: AppColor.lightBlue100,
                        width: 1.0,
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'add',
                    style: AppTextStyles.medium14.copyWith(
                      color: AppColor.lightBlue100,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
