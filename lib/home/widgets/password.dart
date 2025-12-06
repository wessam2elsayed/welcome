import 'package:flutter/material.dart';
import 'package:sign_in/core/theme/app_colors.dart';

class Password extends StatefulWidget {
  const Password({super.key});

  @override
  State<Password> createState() => _PasswordState();
}

class _PasswordState extends State<Password> {

   bool secureText = true;
    TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
              obscureText: secureText,
              controller: passController,
              decoration: InputDecoration(
                fillColor: AppColors.hoverColor,
                filled: true,
                hintText: "Enter your password",               
                suffixIcon: IconButton(onPressed: (){                 
                  setState(() {
                    secureText = !secureText;
                  });
                },
                 icon: Icon(secureText?Icons.visibility:Icons.visibility_off_outlined),
                 color: AppColors.blueColor,),
                
                border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8)),
               ),
              );
  }
}