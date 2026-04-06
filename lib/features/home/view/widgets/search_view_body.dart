import 'package:flutter/material.dart';
import 'package:markiti_app/features/home/view/widgets/search_view_arrow_down_row.dart';
import 'package:markiti_app/features/home/view/widgets/sections_app_bar.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 14),
      children: [
        Column(
          children: [
            SizedBox(height: 48),
            SectionsAppBar(title: 'Search'),
            SizedBox(height: 14),
            SearchViewArrowDownRow(
              title: 'Popular Search',
              onPressed: () {
                // show popular search
              },
            ),
            SearchViewArrowDownRow(
              title: ' Search History',
              onPressed: () {
                // show search history
              },
            ),
          ],
        ),
      ],
    );
  }
}
