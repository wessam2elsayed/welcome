import 'package:flutter/material.dart';
import 'package:sign_in/core/theme/app_colors.dart';

class CustomeContainer extends StatelessWidget {
  const CustomeContainer({super.key, required this.img, required this.txt});
  final String img;
  final String txt;

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){},
      child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            border: BoxBorder.all(color: AppColors.blueColor)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [        
            Image.asset(img,width: 20,height: 20,),
            const SizedBox(width: 20,),
            Text(txt,style: TextStyle(
              color: AppColors.blueColor,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),)
          ],),
        ),
    );
  }
}