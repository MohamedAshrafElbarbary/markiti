import 'package:flutter/material.dart';
import 'package:markiti_app/features/home/view/widgets/best_for_you_list_view_item.dart';

class BestForYouListView extends StatelessWidget {
  const BestForYouListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.6,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: BestForYouListViewItem(),
          );
        },
      ),
    );
  }
}
