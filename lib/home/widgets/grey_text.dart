import 'package:flutter/material.dart';
import 'package:sign_in/core/theme/app_colors.dart';

class GreyText extends StatelessWidget {
  const GreyText({super.key, required this.txt});
final String txt;
  @override
  Widget build(BuildContext context) {
    return  Text(txt,
          style: TextStyle(
            fontSize: 16,
            color:  AppColors.greyColor,
             fontWeight: FontWeight.w600,
          ),);
  }
}