import 'package:flutter/material.dart';
import 'package:markiti_app/features/home/data/model/products_model.dart';
import 'package:markiti_app/features/home/view/widgets/popular_product_list_view_item.dart';

class PopularProductsListView extends StatelessWidget {
  final List<ProductModel> productModel;
  const PopularProductsListView({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.5,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10, // products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: PopularProductListViewItem(
              name: productModel[index].title,
              price: productModel[index].price,
              rating: productModel[index].rating,
            ),
          );
        },
      ),
    );
  }
}
