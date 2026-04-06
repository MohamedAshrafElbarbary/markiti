import 'package:flutter/material.dart';
import 'package:markiti_app/features/home/model/category_model.dart';
import 'package:markiti_app/features/home/view/widgets/category_item.dart';

class CategoryGridView extends StatelessWidget {
  final List<CategoryModel> categoryModel;
  const CategoryGridView({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .38,
      child: GridView.builder(
        padding: EdgeInsets.only(bottom: 0, top: 4),
        itemCount: 6,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisSpacing: 1,
          mainAxisSpacing: 5,
          crossAxisCount: 3,
          childAspectRatio: .80,
        ),
        itemBuilder: (context, index) {
          return CategoryItem(
            name: categoryModel[index].name,
            imageUrl: categoryModel[index].image,
          );
        },
      ),
    );
  }
}
