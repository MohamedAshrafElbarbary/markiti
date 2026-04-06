import 'package:flutter/material.dart';
import 'package:markiti_app/features/home/model/brands_model.dart';
import 'package:markiti_app/features/home/view/widgets/brands_lits_view_item.dart';

class BrandsListView extends StatelessWidget {
  final List<BrandModel> brandModel;
  const BrandsListView({super.key, required this.brandModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.30,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 1,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: BrandsListViewItem(
              brandName: brandModel[index].name ?? "",
              brandEmoji: brandModel[index].emoji ?? "",
            ),
          );
        },
      ),
    );
  }
}
