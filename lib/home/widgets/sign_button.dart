import 'package:flutter/material.dart';
import 'package:sign_in/core/theme/app_colors.dart';



class SignButton extends StatelessWidget {
  const SignButton({super.key, required this.txt, required this.screen, });

  final String txt;
  final Widget screen;
  
  
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
              Navigator.push(context,
               MaterialPageRoute(builder: (context)=>screen));
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