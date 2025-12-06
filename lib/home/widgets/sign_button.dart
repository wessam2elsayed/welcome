import 'package:flutter/material.dart';
import 'package:sign_in/core/theme/app_colors.dart';
import 'package:sign_in/home/screens/sign_in.dart';


class SignButton extends StatelessWidget {
  const SignButton({super.key, required this.txt, });

  final String txt;
  
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
              Navigator.push(context,
               MaterialPageRoute(builder: (context)=>SignIn()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: AppColors.blueColor,
              minimumSize: Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(8)
              )
            ),
             child: Text(txt,
             style: TextStyle(color: Colors.white),)
             );
  }
}