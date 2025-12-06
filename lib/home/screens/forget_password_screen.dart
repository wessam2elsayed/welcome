import 'package:flutter/material.dart';
import 'package:sign_in/core/theme/app_colors.dart';
import 'package:sign_in/home/widgets/blue_text.dart';
import 'package:sign_in/home/widgets/email.dart';
import 'package:sign_in/home/widgets/grey_text.dart';
import 'package:sign_in/home/widgets/sign_button.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: InkWell(
        onTap: (){
          Navigator.pop(context);
        },

        child: Icon(Icons.arrow_back)),
      title: Text("back",
      style: TextStyle(color: AppColors.greyColor,
      fontSize: 14,
      fontWeight: FontWeight.w600),),),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
           BlueText(txt: "Forget \n"
                "Password?"),
            GreyText(txt: "Enter your email for verification process,\n"
            "We will send code to your email"),
        
            const SizedBox(height: 50,),
            GreyText(txt: "Email"),
            Email(),
        
            const SizedBox(height: 50,),
            SignButton(txt: "Continue")
        
            
          
          ],),
        ),
      ),
    );
  }
}