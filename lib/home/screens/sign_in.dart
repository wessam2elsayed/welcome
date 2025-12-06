import 'package:flutter/material.dart';
import 'package:sign_in/core/theme/app_colors.dart';
import 'package:sign_in/home/screens/forget_password_screen.dart';
import 'package:sign_in/home/widgets/blue_text.dart';
import 'package:sign_in/home/widgets/custome_container.dart';
import 'package:sign_in/home/widgets/email.dart';
import 'package:sign_in/home/widgets/grey_text.dart';
import 'package:sign_in/home/widgets/password.dart';
import 'package:sign_in/home/widgets/sign_button.dart';


class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  bool secureText = true;
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();


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
          BlueText(txt: "Sign in"),

          GreyText(txt: "Please log in into your account"),
          
            const SizedBox(height: 20,),
            GreyText(txt: "Email"),          
            Email(),

               const SizedBox(height: 20,),
             GreyText(txt: "Password"),
             Password(),

              const SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(onPressed:(){
                    Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>ForgetPasswordScreen()));
                  },
                  child:  Text("Forget password?",
                  style: TextStyle(
                    color: AppColors.orangeColor
                  ),
                  )
                  ),
                ],
              ),
              const SizedBox(height: 20,),
            SignButton(txt: 'Sign In',),
           const SizedBox(height: 80,),

           CustomeContainer(img: "assets/googleimage.png",
            txt: "Sign in with Google"),
            const SizedBox(height: 20,),
             CustomeContainer(img: "assets/facebook_logo.png",
             txt: "Sign in with facebook"),
           
                    
        ],),
      ),
      )
    );
  }
}
