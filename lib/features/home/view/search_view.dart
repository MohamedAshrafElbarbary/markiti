import 'package:flutter/material.dart';
import 'package:markiti_app/features/home/view/widgets/search_view_body.dart';

class SearchView extends StatelessWidget {
  static const String routeName = 'search view';
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SearchViewBody());
  }
}
