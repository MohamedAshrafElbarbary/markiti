import 'package:flutter/material.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:markiti_app/core/theme/app_text_style.dart';

class AppPasswordTextFeild extends StatefulWidget {
  final String hintText;
  final Widget prefixIcon;
  final void Function(String?)? onSaved;
  const AppPasswordTextFeild({
    super.key,
    required this.hintText,
    required this.prefixIcon,
    this.onSaved,
  });

  @override
  State<AppPasswordTextFeild> createState() => _AppPasswordTextFeildState();
}

class _AppPasswordTextFeildState extends State<AppPasswordTextFeild> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      child: TextFormField(
        onSaved: widget.onSaved,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'field is required';
          }
          //   Regex validation for password strength can be added here
          return null;
        },
        obscureText: isObscure,
        decoration: InputDecoration(
          prefixIcon: Padding(
            padding: const EdgeInsets.all(14),
            child: widget.prefixIcon,
          ),
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                isObscure = !isObscure;
              });
            },
            icon: Icon(isObscure ? Icons.visibility : Icons.visibility_off),
          ),
          hintText: widget.hintText,
          hintStyle: AppTextStyles.medium24,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.lightBlue700),
            borderRadius: BorderRadius.circular(14),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.lightBlue700),
            borderRadius: BorderRadius.circular(14),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColor.lightBlue700),
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),
    );
  }
}
