import 'package:flutter/material.dart';
import 'package:sign_in/core/theme/app_colors.dart';
import 'package:sign_in/home/widgets/blue_text.dart';
import 'package:sign_in/home/widgets/email.dart';
import 'package:sign_in/home/widgets/grey_text.dart';
import 'package:sign_in/home/widgets/password.dart';
import 'package:sign_in/home/widgets/sign_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {


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
          BlueText(txt: "Sign up"),
          GreyText(txt: "Please create a new account"),

          const SizedBox(height: 20,),
          GreyText(txt: "Name"),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),

              )
            ),
          ),

          const SizedBox(height: 20,),
          GreyText(txt: "Email"),
          Email(),

              const SizedBox(height: 20,),
             GreyText(txt: "Password"),

            Password(),

            Row(
              
              children: [
              Checkbox(value: false, onChanged: (value){
                
              }),
              GreyText(txt: "Agree the terms of use privacy policy"
               ),
            ],),

            const SizedBox(height: 20,),
            SignButton(txt: "Sign Up",)
        ],),
      ),
      )
    );
  }
}