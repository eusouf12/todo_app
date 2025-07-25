import 'package:flutter/material.dart';
import 'package:my_task/common%20widget/common%20btn/custom_btn.dart';
import 'package:my_task/common%20widget/common%20text/custom_text.dart';
import 'package:my_task/view/Verifymail_otp/Otp/OtpField/otp_field.dart';

class OtpVerify extends StatefulWidget {
  const OtpVerify({super.key});

  @override
  State<OtpVerify> createState() => _OtpVerifyState();
}

class _OtpVerifyState extends State<OtpVerify> {
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
                text: '6-digit code',
                color: Colors.black,
                fontWeight: FontWeight.w500,
                fontSize: 30,
                lineHeight: 38,
              ),
          
              CustomText(
                text:"Please enter the code we've sent to michelle.rivera@example.com",
                textAlign: TextAlign.start,
                top: 8,
                bottom: 23,
              ),

              OtpField(),

             SizedBox(height: 38),
              CustomBtn(
                onTap: () {
                  Navigator.pushNamed(context, '/setpassword');
                },
                title: 'Confirm',
                titleColor: Colors.white,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
