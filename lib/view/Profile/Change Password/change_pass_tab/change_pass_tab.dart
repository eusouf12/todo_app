import 'package:flutter/material.dart';
import 'package:my_task/common%20widget/common%20btn/custom_btn.dart';
import 'package:my_task/common%20widget/common%20field%20text/custom_text_field.dart';
import 'package:my_task/common%20widget/common%20text/custom_text.dart';

class ChangePassTab extends StatefulWidget {
  const ChangePassTab({super.key});

  @override
  State<ChangePassTab> createState() => _ChangePassTabState();
}

class _ChangePassTabState extends State<ChangePassTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        automaticallyImplyLeading: false,
        title: ListTile(
          leading: GestureDetector(
            onTap: (){
              Navigator.pushNamed(context,'/profilepage');
            },
            child: Container(
              width: 40,
              height: 40,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFF7FFEF),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 6,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Icon(
                size: 16,
                Icons.arrow_back_ios,
                color: Color(0xFF6BBA2E),
              ),
            ),
          ),

          title: CustomText(
            text: 'Change Password',
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.center,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),
     
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
