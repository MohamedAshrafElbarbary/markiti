import 'package:flutter/material.dart';
import 'package:markiti_app/features/home/data/model/category_model.dart';
import 'package:markiti_app/features/home/view/widgets/category_item.dart';
import 'package:markiti_app/features/home/view/widgets/sections_app_bar.dart';

class CategoriesView extends StatelessWidget {
  static const String routeName = 'cat_view';
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<CategoryModel> categoryList =
        (ModalRoute.of(context)?.settings.arguments as List<CategoryModel>?) ??
        [];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                children: [
                  SizedBox(height: 48),
                  SectionsAppBar(title: 'Categories'),
                ],
              ),
            ),
          ),
          SliverList.builder(
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              return CategoryItem(
                name: categoryList[index].name,
                imageUrl: categoryList[index].image,
              );
            },
          ),
        ],
      ),
    );
  }
}
