import 'package:flutter/material.dart';
import 'package:markiti_app/features/home/data/model/products_model.dart';
import 'package:markiti_app/features/home/view/widgets/popular_product_list_view_item.dart';
import 'package:markiti_app/features/home/view/widgets/sections_app_bar.dart';

class PopularPorductsView extends StatelessWidget {
  static const String routeName = 'popluar products';

  const PopularPorductsView({super.key});

  @override
  Widget build(BuildContext context) {
    final products =
        (ModalRoute.of(context)?.settings.arguments as List<ProductModel>?) ??
        [];
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          children: [
            SizedBox(height: 48),
            SectionsAppBar(title: 'Popular Product'),
            const SizedBox(height: 16),
            Expanded(
              child: products.isEmpty
                  ? const Center(child: Text('No popular products available'))
                  : ListView.separated(
                      itemCount: products.length,
                      separatorBuilder: (context, index) =>
                          const SizedBox(height: 12),
                      itemBuilder: (context, index) {
                        final product = products[index];
                        return PopularProductListViewItem(
                          name: product.title,
                          price: product.price,
                          rating: product.rating,
                          imageUrl: product.thumbnail,
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
