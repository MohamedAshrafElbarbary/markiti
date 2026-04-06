import 'package:flutter/material.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/features/home/view/search_view.dart';
import 'package:markiti_app/features/home/view/widgets/home_app_bar.dart';
import 'package:markiti_app/features/home/view/widgets/home_search_bar.dart';

class HomeAppBarAndSearchBar extends StatelessWidget {
  const HomeAppBarAndSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HomeAppBar(),
        const SizedBox(height: 12),
        InkWell(
          onTap: () {
            Navigator.pushNamed(context, SearchView.routeName);
          },
          child: AbsorbPointer(
            child: HomeSearchBar(
              hintText: 'What are you looking for ?',
              prefixIcon: Icon((Icons.search), color: AppColor.darkBlue900),
              sufixIcon: Icon(
                Icons.tune_outlined,
                color: AppColor.lightBlue100,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
