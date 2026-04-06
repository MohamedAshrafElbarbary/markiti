import 'package:flutter/material.dart';
import 'package:markiti_app/features/home/view/widgets/sections_app_bar.dart';

class PopularPorductsView extends StatelessWidget {
  static const String routeName = 'popluar products';

  const PopularPorductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          children: [
            SizedBox(height: 48),
            SectionsAppBar(title: 'Popular Product'),
          ],
        ),
      ),
    );
  }
}
