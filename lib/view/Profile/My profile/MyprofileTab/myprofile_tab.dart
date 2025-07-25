import 'package:flutter/material.dart';
import 'package:my_task/common%20widget/common%20field%20text/custom_text_field.dart';
import 'package:my_task/common%20widget/common%20text/custom_text.dart';

class MyProfileTab extends StatefulWidget {
  const MyProfileTab({super.key});

  @override
  State<MyProfileTab> createState() => _MyProfileTabState();
}

class _MyProfileTabState extends State<MyProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/profilepage');
              },
              child: Container(
                width: 40, height: 40,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFF7FFEF),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 6,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 16,
                  color: Color(0xFF6BBA2E),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: CustomText(
                  text: 'My Profile',
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Color(0xFF6BBA2E),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/editprofile');
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
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                child: Icon(
                  Icons.edit_outlined,
                  size: 16,
                  color: Color(0xFF6BBA2E),
                ),
              ),
            ),
          ],
        ),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: [
            //profile
            CustomTextField(
              height: 52,
              readOnly: true,
              hinText: 'Mojahid Islam',
              hintFontSize: 14,
              textColor: Colors.black,
              prefixIcon: Icons.person_outline,
              suffixIconColor: Color(0xFF6BBA2E),
              focusBorderColor: Colors.transparent,
              showContainer: true,
            ),
            SizedBox(height: 10),
            //email
            CustomTextField(
              height: 52,
              readOnly: true,
              hinText: 'Samaltman@gmail.com',
              hintFontSize: 14,
              textColor: Colors.black,
              prefixIcon: Icons.alternate_email_outlined,
              showContainer: true,
              suffixIconColor: Color(0xFF6BBA2E),
              focusBorderColor: Colors.transparent,
            ),

            //location
            CustomTextField(
              height: 52,
              readOnly: true,
              showContainer: true,
              hinText: '1234 Elm Street, Springfield, IL',
              hintFontSize: 14,
              textColor: Colors.black,
              prefixIcon: Icons.location_on_outlined,
              suffixIconColor: Color(0xFF6BBA2E),
              focusBorderColor: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
