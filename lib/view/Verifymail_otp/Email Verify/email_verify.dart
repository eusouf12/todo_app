import 'package:flutter/material.dart';
import 'package:my_task/common%20widget/common%20btn/custom_btn.dart';
import 'package:my_task/common%20widget/common%20field%20text/custom_text_field.dart';
import 'package:my_task/common%20widget/common%20text/custom_text.dart';

class EmailVerify extends StatefulWidget {
  const EmailVerify({super.key});

  @override
  State<EmailVerify> createState() => _EmailVerifyState();
} 

class _EmailVerifyState extends State<EmailVerify> {
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
                text: 'Verify Your Email',
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 30,
                lineHeight: 38,
              ),
          
              CustomText(
                text:"We'll send a verification code to this email to confirm your account.",
                textAlign: TextAlign.start,
                top: 8,
                bottom: 16,
              ),
          
              // Email
              CustomText(
                text: 'Email Address',
                fontSize: 14,
                fontWeight: FontWeight.w500,
                lineHeight: 20,
                color: Colors.black,
                top: 8,
                bottom: 6,
              ),
              CustomTextField(
                hinText: 'michelle.rivera@example.com',
                formFieldValidator: (a) =>
                    a.isEmpty ? 'Enter Your Email' : null,
              ),
             SizedBox(height: 60),
              CustomBtn(
                onTap: () {
                  Navigator.pushNamed(context, '/otpverify');
                },
                title: 'Send OTP',
                titleColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
