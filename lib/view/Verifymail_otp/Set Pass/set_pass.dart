import 'package:flutter/material.dart';
import 'package:my_task/common%20widget/common%20btn/custom_btn.dart';
import 'package:my_task/common%20widget/common%20field%20text/custom_text_field.dart';
import 'package:my_task/common%20widget/common%20text/custom_text.dart';

class SetPassWord extends StatefulWidget {
  const SetPassWord({super.key});

  @override
  State<SetPassWord> createState() => _SetPassState();
}
class _SetPassState extends State<SetPassWord> {
  @override
  Widget build(BuildContext context) {
 return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 20),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Set Your New Password',
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 30,
                lineHeight: 38,
              ),
          
              CustomText(
                text:"Create a secure password to protect your account and get started seamlessly!",
                textAlign: TextAlign.start,
                top: 8,
                bottom: 16,
              ),
          
                //password
                CustomText(
                  text: 'Password',
                 fontSize: 14,
                  fontWeight: FontWeight.w500,
                  lineHeight: 20,
                  color: Colors.black,
                  top: 16,
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
                  top: 20,
                  bottom: 6,
                ),
                CustomTextField(
                  hinText: 'Enter Your Confirm Password',
                  isPassword: true,
                  showObscure: true,
                  formFieldValidator: (a) =>
                      a.isEmpty ? 'Enter Your Confirm Password' : null,
                ),
             SizedBox(height: 32),
              CustomBtn(
                onTap: () {
                  Navigator.pushNamed(context, '/homepage');
                },
                title: 'Continue',
                titleColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
