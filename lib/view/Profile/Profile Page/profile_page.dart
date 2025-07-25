import 'package:flutter/material.dart';
import 'package:my_task/common%20widget/common%20field%20text/custom_text_field.dart';
import 'package:my_task/common%20widget/common%20text/custom_text.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomTextField(
            height: 52,
            readOnly: true,
            hinText: 'My ProFile',
            hintFontSize: 14,
            textColor: Colors.black,
            prefixIcon: Icons.person_outline,
            suffixIconColor: Color(0xFF6BBA2E),
            suffixIcon: Icons.arrow_forward_ios,
          ),
          CustomTextField(),
          CustomText(
            text: 'More',
            fontSize: 16,
            top: 3,
            bottom: 3,
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          
          ],
      ),
    );
  }
}
