import 'package:flutter/material.dart';
import 'package:markiti_app/features/home/view/widgets/sections_app_bar.dart';

class BestForYouView extends StatelessWidget {
  static const String routeName = 'best for you';
  const BestForYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          children: [
            SizedBox(height: 48),
            SectionsAppBar(title: 'Best For You'),
          ],
        ),
      ),
    );
  }
}
