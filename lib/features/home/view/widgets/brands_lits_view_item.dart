import 'package:flutter/material.dart';

class BrandsListViewItem extends StatelessWidget {
  final String brandName;
  final String brandEmoji;
  const BrandsListViewItem({
    super.key,
    required this.brandName,
    required this.brandEmoji,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        height: MediaQuery.of(context).size.width * 0.25,
        child: Column(children: [Text(brandEmoji), Text(brandName)]),
        //Image.asset(Assets.assetsImagesSONYBrand2, fit: BoxFit.fill),
      ),
    );
  }
}
