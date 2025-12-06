import 'package:flutter/material.dart';
import 'package:sign_in/home/screens/sign_up.dart';
import 'package:sign_in/home/widgets/grey_text.dart';

class NewAccount extends StatelessWidget {
  const NewAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
              children: [
                GreyText(txt: "New customer? "),
                TextButton(onPressed: (){
                  Navigator.push(context,
                   MaterialPageRoute(
                    builder: (context)=> SignUp()
                    )
                    );
                },
                 child: Text("Create new account",
                 style: TextStyle(color: Color(0xff4280EF)),))
              ],
            );
  }
}