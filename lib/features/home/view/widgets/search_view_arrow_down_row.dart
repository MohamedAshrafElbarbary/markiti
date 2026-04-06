import 'package:flutter/material.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';

class SearchViewArrowDownRow extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  const SearchViewArrowDownRow({
    super.key,
    required this.title,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppTextStyles.semiBold16.copyWith(color: AppColor.darkBlue900),
        ),
        Spacer(),
        IconButton(onPressed: onPressed, icon: Icon(Icons.keyboard_arrow_down)),
      ],
    );
  }
}
