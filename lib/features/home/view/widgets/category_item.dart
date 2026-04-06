import 'package:flutter/material.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';

class CategoryItem extends StatelessWidget {
  final String? name;
  final String? imageUrl;
  const CategoryItem({super.key, required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(1)),
        child: Column(
          children: [
            Image.network(imageUrl ?? "", fit: BoxFit.cover),
            Text(
              overflow: TextOverflow.ellipsis,
              name ?? "",
              style: AppTextStyles.medium16.copyWith(
                color: AppColor.darkBlue900,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
