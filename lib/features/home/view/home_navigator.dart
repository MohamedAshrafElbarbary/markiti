import 'package:flutter/material.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/features/home/view/cart_view.dart';
import 'package:markiti_app/features/home/view/favourites_view.dart';
import 'package:markiti_app/features/home/view/home_view.dart';
import 'package:markiti_app/features/home/view/menu_view.dart';

class HomeNavigator extends StatefulWidget {
  static const String routeName = 'home_navigator';
  const HomeNavigator({super.key});

  @override
  State<HomeNavigator> createState() => _HomeNavigatorState();
}

class _HomeNavigatorState extends State<HomeNavigator> {
  int currentIndex = 0;

  final List<Widget> screens = [
    HomeView(),
    CartView(),
    FavouritesView(),
    MenuView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: currentIndex >= 0 && currentIndex < screens.length
          ? screens[currentIndex]
          : screens[0],

      //screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: AppColor.lightBlue100,
        unselectedItemColor: AppColor.navGray,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border_outlined),
            label: "favourites",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
        ],
      ),
    );
  }
}
