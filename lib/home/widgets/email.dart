import 'package:flutter/material.dart';
import 'package:sign_in/core/theme/app_colors.dart';

class Email extends StatefulWidget {
  const Email({super.key});

  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email> {

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
              controller: emailController,
              decoration: InputDecoration(
                fillColor: AppColors.hoverColor,
                filled: true,
                hintText: "Enter your email",               
                suffix: Icon(Icons.check,
                color: Colors.green,),
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8)),
               ),
              );
  }
}