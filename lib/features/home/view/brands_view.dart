import 'package:flutter/material.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';
import 'package:markiti_app/features/home/view/widgets/sections_app_bar.dart';

class BrandsView extends StatelessWidget {
  static const String routeName = 'brands_view';
  const BrandsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          children: [
            SizedBox(height: 48),
            SectionsAppBar(title: 'Brands'),
            SizedBox(height: 14),
            Row(
              children: [
                Text(
                  'All Brands',
                  style: AppTextStyles.semiBold20.copyWith(
                    color: AppColor.darkBlue900,
                  ),
                ),
                //    BrandsListViewItem()                  },
              ],
            ),
          ],
        ),
      ),
    );
  }
}
