import 'package:flutter/material.dart';
import 'package:markiti_app/features/home/data/model/brands_model.dart';
import 'package:markiti_app/features/home/view/widgets/brands_lits_view_item.dart';

class BrandsListView extends StatelessWidget {
  final List<BrandModel> brandList;
  const BrandsListView({super.key, required this.brandList});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: brandList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: BrandsListViewItem(
              brandName: brandList[index].name ?? "",
              brandEmoji: brandList[index].emoji ?? "",
            ),
          );
        },
      ),
    );
  }
}
