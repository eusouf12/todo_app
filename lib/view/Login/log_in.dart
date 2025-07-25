import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_task/common%20widget/DividerOr/divider_or.dart';
import 'package:my_task/common%20widget/common%20btn/custom_btn.dart';
import 'package:my_task/common%20widget/common%20field%20text/custom_text_field.dart';
import 'package:my_task/common%20widget/common%20text/custom_text.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
 
 bool isChacked = false;

  @override 
  Widget build(BuildContext context) {
    return Scaffold(    
       body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
             children: [
                const CustomText(
                  text: 'Welcome Back!',
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  lineHeight: 38,
                ),

                const CustomText(
                  text: 'Stay productive and take control of your tasks.',
                  top: 8,
                  bottom: 12,
                ),

                // Email
                const CustomText(
                  text:'Email Address',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  lineHeight: 20,
                  color: Colors.black,
                  top: 5,
                  bottom: 6,
                ),
                const CustomTextField(
                  hinText: 'michelle.riverra@example.com',
                ),

                //password
                const CustomText(
                  text:'Password',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  top:17,
                  bottom:6,
                ),
                const CustomTextField(
                  hinText: 'Enter Your Password',
                  isPassword: true,
                  showObscure: true,
                ),
                SizedBox(height: 4,),
                Row(
                  children: [
                    Transform.scale(
                      scale: 13.34/24,
                      child: Checkbox(
                        value: isChacked,
                        onChanged: (bool? newValue) {
                        setState(() {
                          isChacked = newValue ?? false;
                        });
                        },
                        side: const BorderSide(
                        color: Color(0xFF4CAF50), 
                        width: 2,
                        ),
                        activeColor: Color(0xFF4CAF50),
                      ),
                    ),
                    CustomText(
                      text: 'Remember me',
                      fontSize: 12,
                      top: 0,
                      left: 0,
                    )
                  ],
                ),
                SizedBox(height: 13,),
                DividerOr(),
                SizedBox(height: 17),
                RichText(text: TextSpan(
                  text: ' Don\'t have an account ?   ',
                    style: TextStyle(
                      fontSize: 14,
                      
                    ),
                  children: [
                    TextSpan(
                      text: 'Sign Up',
                      style: TextStyle(
                        color:Color(0xFF84C000),
                        fontSize: 14,
                        fontWeight: FontWeight.w400
                      ),
                      recognizer:TapGestureRecognizer()
                        ..onTap = (){
                        Navigator.pushNamed(context, '/signup');
                    },
                    )
                  ]
                )
                ),

                SizedBox(height: 26,),
                CustomBtn(onTap: (){
                  Navigator.pushNamed(context, '/homepage');
                },
                  title: 'Log In',
                  titleColor: Colors.white,
                ),
              ],
         ),
       ),
    );
  }
}