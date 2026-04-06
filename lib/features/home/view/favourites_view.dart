import 'package:flutter/material.dart';
import 'package:markiti_app/features/home/view/widgets/favorites_sections_app_bar.dart';

class FavouritesView extends StatelessWidget {
  static const String routeName = 'Fav_view';
  const FavouritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14),
        child: Column(
          children: [
            SizedBox(height: 48),
            FavoritesSectionsAppBar(title: 'Favorites'),
          ],
        ),
      ),
    );
  }
}
