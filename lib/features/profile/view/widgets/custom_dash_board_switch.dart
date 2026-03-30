import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';

class CustomDashBoardSwitch extends StatefulWidget {
  final String prfixIconPath;
  final String title;

  const CustomDashBoardSwitch({
    super.key,
    required this.prfixIconPath,
    required this.title,
  });

  @override
  State<CustomDashBoardSwitch> createState() => _CustomDashBoardSwitchState();
}

class _CustomDashBoardSwitchState extends State<CustomDashBoardSwitch> {
  bool isOn = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 22),
          child: Row(
            children: [
              SvgPicture.asset(widget.prfixIconPath),
              const SizedBox(width: 16),
              Text(
                widget.title,
                style: AppTextStyles.medium16.copyWith(
                  color: AppColor.darkBlue900,
                ),
              ),
              Spacer(),
              Switch(
                thumbColor: WidgetStateProperty.all(Colors.white),
                activeThumbColor: AppColor.lightBlue100,
                value: isOn,
                onChanged: (value) {
                  isOn = value;
                  setState(() {});
                },
              ),
            ],
          ),
        ),
        Divider(endIndent: 22, indent: 22, color: AppColor.navy),
      ],
    );
  }
}
