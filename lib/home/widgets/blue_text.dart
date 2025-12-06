import 'package:flutter/material.dart';
import 'package:sign_in/core/theme/app_colors.dart';

class BlueText extends StatelessWidget {
  const BlueText({super.key, required this.txt});
final String txt;
  @override
  Widget build(BuildContext context) {
    return  Text(txt,
          style: TextStyle(
            fontSize: 42,
            color: AppColors.blueColor,
            fontWeight: FontWeight.w700,
          ),);
  }
}