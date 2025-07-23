import 'package:flutter/material.dart';
import 'package:my_task/common%20widget/common%20btn/custom_btn.dart';
import 'package:my_task/common%20widget/common%20field%20text/custom_text_field.dart';
import 'package:my_task/common%20widget/common%20text/custom_text.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override 
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Page'),
      ),
      body: Center(
        child: Column(
          children: [
             CustomText(
            text: 'Welcome to the Login Page',
            color: Colors.black,
            fontWeight: FontWeight.bold,
            textAlign: TextAlign.center,
          ),
          CustomBtn(
            onTap: (){

            },
            title: 'Login',
            ),
            SizedBox(height: 20),
            CustomTextField(
              hinText: 'Enter your email',
            )
          ],
          
        ),
        
        
      ),
    );
  }
}