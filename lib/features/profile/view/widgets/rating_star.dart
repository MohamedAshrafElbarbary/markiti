import 'package:flutter/material.dart';
import 'package:markiti_app/core/theme/app_color.dart';

class StarRating extends StatefulWidget {
  const StarRating({super.key});

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  int currentRating = 0;

  Widget buildStar(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          currentRating = index + 1;
        });
      },
      child: Icon(
        Icons.star,
        size: 40,
        color: index < currentRating ? AppColor.darkBlue900 : Colors.white,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) => buildStar(index)),
    );
  }
}
