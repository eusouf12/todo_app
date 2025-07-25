import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_task/common%20widget/DividerOr/divider_or.dart';
import 'package:my_task/common%20widget/common%20btn/custom_btn.dart';
import 'package:my_task/common%20widget/common%20field%20text/custom_text_field.dart';
import 'package:my_task/common%20widget/common%20text/custom_text.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final RxBool isChecked = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50, horizontal: 20),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Create Your Account',
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  lineHeight: 38,
                ),

                CustomText(
                  text:'Join Task Manager today_organize better,work smarter and style in your control of your life.',
                  textAlign: TextAlign.start,
                  top: 8,
                  bottom: 12,
                ),

                // First name
                CustomText(
                  text: 'First Name',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  lineHeight: 20,
                  color: Colors.black,
                  top: 5,
                  bottom: 6,
                ),
                CustomTextField(
                  hinText: 'e.g. Kristin',
                  formFieldValidator: (a) =>
                      a.isEmpty ? 'Enter Your First Name' : null,
                ),

                // lastname
                CustomText(
                  text: 'Last Name',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  lineHeight: 20,
                  color: Colors.black,
                  top: 5,
                  bottom: 6,
                ),
                CustomTextField(
                  hinText: 'e.g Cooper',
                  formFieldValidator: (a) =>
                      a.isEmpty ? 'Enter Your Last Name' : null,
                ),

                // Email
                CustomText(
                  text: 'Email Address',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  lineHeight: 20,
                  color: Colors.black,
                  top: 5,
                  bottom: 6,
                ),
                CustomTextField(
                  hinText: 'kristin.cooper@gmail.com',
                  formFieldValidator: (a) =>
                      a.isEmpty ? 'Enter Your Email' : null,
                ),

                // Address
                CustomText(
                  text: 'Address',
                 fontSize: 14,
                  fontWeight: FontWeight.w500,
                  lineHeight: 20,
                  color: Colors.black,
                  top: 5,
                  bottom: 6,
                ),
                CustomTextField(
                  hinText: 'e.g. 1234 Elm Street,Springfield, lL',
                  formFieldValidator: (a) =>
                      a.isEmpty ? 'Enter Your Address' : null,
                ),

                //password
                CustomText(
                  text: 'Password',
                 fontSize: 14,
                  fontWeight: FontWeight.w500,
                  lineHeight: 20,
                  color: Colors.black,
                  top: 5,
                  bottom: 6,
                ),
                CustomTextField(
                  hinText: 'Enter Your Password',
                  isPassword: true,
                  showObscure: true,
                  formFieldValidator: (a) =>
                      a.isEmpty ? 'Enter Your Password' : null,
                ),
                //confirm password
                CustomText(
                  text: 'Confirm Password',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  lineHeight: 20,
                  color: Colors.black,
                  top: 5,
                  bottom: 6,
                ),
                CustomTextField(
                  hinText: 'Enter Your Confirm Password',
                  isPassword: true,
                  showObscure: true,
                  formFieldValidator: (a) =>
                      a.isEmpty ? 'Enter Your Confirm Password' : null,
                ),
                SizedBox(height: 6),
               Obx(()=>Row(
                  children: [
                    Transform.scale(
                      scale: 13.34/24.0,
                      child: Checkbox(
                        value: isChecked.value,
                          onChanged: (val) => isChecked.value = val ?? false,
                        side: const BorderSide(
                          color: Color(0xFF4CAF50),
                          width: 2,
                        ),
                        activeColor: Color(0xFF4CAF50),
                        
                      ),
                    ),
                    CustomText(
                      text:
                          'I agree to the Teams & Conditions and Privacy Policy',
                          fontSize: 12,
                          left: 0,
                          right: 0,
                    ),
                  ],
               )
                ),
                SizedBox(height: 13),
                DividerOr(),
                SizedBox(height: 17),
                RichText(
                  text: TextSpan(
                    text: 'Already have an account ?   ',
                    style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400),
                    children: [
                      TextSpan(
                        text: 'Log In',
                        style: TextStyle(
                          color: Color(0xFF84C000),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.pushNamed(context, '/');
                          },
                      ),
                    ],
                  ),
                ),

                SizedBox(height: 26),
                CustomBtn(
                  onTap: () {
                    Navigator.pushNamed(context, '/verifyemail');
                  },
                  title: 'Sign Up',
                  titleColor: Colors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
