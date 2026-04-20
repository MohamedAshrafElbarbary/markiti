import 'package:flutter/material.dart';
import 'package:markiti_app/core/theme/app_color.dart';

class CustomFavoriteIcon extends StatefulWidget {
  const CustomFavoriteIcon({super.key});

  @override
  State<CustomFavoriteIcon> createState() => _CustomFavoriteIconState();
}

class _CustomFavoriteIconState extends State<CustomFavoriteIcon> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 5,
      right: 5,
      child: Container(
        decoration: BoxDecoration(color: Colors.white, shape: BoxShape.circle),
        child: IconButton(
          onPressed: () {
            setState(() {
              isFavorite = !isFavorite;
            });
          },
          icon: Icon(
            isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
            size: 30,
            color: AppColor.darkBlue900,
          ),
        ),
      ),
    );
  }
}
