import 'package:flutter/material.dart';
import 'package:sign_in/home/widgets/blue_text.dart';
import 'package:sign_in/home/widgets/grey_text.dart';
import 'package:sign_in/home/widgets/new_account.dart';

import 'package:sign_in/home/widgets/sign_button.dart';



class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          const SizedBox(height: 50,),
         BlueText(txt: "Welcome"),
          const SizedBox(height: 10,),
          
         GreyText(txt: "Let's get started"),
           const SizedBox(height: 200,),
          GreyText(txt: "Existing  customer / Get started "),

          const SizedBox(height: 10,),
          SignButton(txt: 'Sign In',),

            const SizedBox(height: 100,),
           NewAccount()
           
        ],),
      ),
    );
  }
}