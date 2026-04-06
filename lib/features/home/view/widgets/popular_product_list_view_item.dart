import 'package:flutter/material.dart';
import 'package:markiti_app/core/const/app_images.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';

class PopularProductListViewItem extends StatelessWidget {
  final num? price;
  final num? rating;
  final String? name;
  const PopularProductListViewItem({
    super.key,
    this.price,
    this.rating,
    required this.name,
  });

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
                  // image form api
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
                  price.toString(),
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
                  rating.toString(),
                  style: AppTextStyles.medium12.copyWith(
                    color: AppColor.darkBlue900,
                  ),
                ),
              ],
            ),
          ),
          Text(
            overflow: TextOverflow.ellipsis,
            name ?? '',
            style: AppTextStyles.medium12.copyWith(color: AppColor.darkBlue900),
          ),
        ],
      ),
    );
  }
}
