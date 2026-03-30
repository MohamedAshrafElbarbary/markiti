import 'package:flutter/material.dart';
import 'package:markiti_app/core/theme/app_color.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class CustomCodeVerificationTextField extends StatelessWidget {
  const CustomCodeVerificationTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 22),
      child: PinInput(
        length: 4,
        builder: (context, cells) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: cells.map((cell) {
              return Container(
                width: 64,
                height: 64,
                margin: EdgeInsets.symmetric(horizontal: 8),
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: AppColor.lightBlue700),
                  borderRadius: BorderRadius.circular(8),
                  color: cell.isFocused ? Colors.white : Colors.white,
                ),
                child: Center(
                  child: Text(
                    cell.character ?? '_',
                    style: TextStyle(color: AppColor.gray, fontSize: 32),
                  ),
                ),
              );
            }).toList(),
          );
        },
        onCompleted: (pin) {
          //  المفروض اخد الكود واعمل بيه طلب للسيرفر عشان اتأكد انه صح
        },
      ),
    );
  }
}
