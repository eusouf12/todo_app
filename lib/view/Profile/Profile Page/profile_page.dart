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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            //profile
            CustomTextField(
              height: 52,
              readOnly: true,
              hinText: 'My ProFile',
              hintFontSize: 14,
              textColor: Colors.black,
              prefixIcon: Icons.person_outline,
              suffixIconColor: Color(0xFF6BBA2E),
              suffixIcon: Icons.arrow_forward_ios,
             focusBorderColor: Colors.transparent,
             onTapClick: (){
              Navigator.pushNamed(context,'/myprofile');
             },
        
            ),
             SizedBox(height: 8.5,),
            //setting
            CustomTextField(
              height: 52,
              readOnly: true,
              hinText: 'Account Setting',
              hintFontSize: 14,
              textColor: Colors.black,
              prefixIcon: Icons.settings,
              suffixIconColor: Color(0xFF6BBA2E),
              suffixIcon: Icons.arrow_forward_ios,
              focusBorderColor: Colors.transparent,
              onTapClick: (){
                Navigator.pushNamed(context,'/accountsettings');
              },
              
            ),
             SizedBox(height: 8.5,),
            CustomText(
              text: 'More',
              fontSize: 16,
              top: 3,
              bottom: 3,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
             SizedBox(height: 8.5,),
            //termand condition
            CustomTextField(
              height: 52,
              readOnly: true,
              hinText: 'Terms&Conditions',
              hintFontSize: 14,
              textColor: Colors.black,
              prefixIcon: Icons.description_outlined,
              suffixIconColor: Color(0xFF6BBA2E),
              suffixIcon: Icons.arrow_forward_ios,
              focusBorderColor: Colors.transparent,
              onTapClick: () {
                Navigator.pushNamed(context, '/termconditions');
              },
            ),
             SizedBox(height: 8.5,),
              //privacy
            CustomTextField(
              height: 52,
              readOnly: true,
              hinText: 'Privacy Policy',
              hintFontSize: 14,
              textColor: Colors.black,
              prefixIcon: Icons.library_books_outlined,
              suffixIconColor: Color(0xFF6BBA2E),
              suffixIcon: Icons.arrow_forward_ios,
             focusBorderColor: Colors.transparent,
             onTapClick: (){
              Navigator.pushNamed(context,'/myprofile');
             },
        
            ),
             SizedBox(height: 8.5,),
            //help
            CustomTextField(
              height: 52,
              readOnly: true,
              hinText: 'Help/Support',
              hintFontSize: 14,
              textColor: Colors.black,
              prefixIcon: Icons.help_outline,
              suffixIconColor: Color(0xFF6BBA2E),
              suffixIcon: Icons.arrow_forward_ios,
              focusBorderColor: Colors.transparent,
              onTapClick: (){
                Navigator.pushNamed(context,'/help');
              },
              
            ),
            SizedBox(height: 8.5,),
              //LogOut
            CustomTextField(
              height: 52,
              readOnly: true,
              hinText: 'Log Out',
              hintFontSize: 14,
              textColor: Colors.black,
              prefixIcon: Icons.logout,
              suffixIconColor: Color(0xFF6BBA2E),
              suffixIcon: Icons.arrow_forward_ios,
             focusBorderColor: Colors.transparent,
             onTapClick: (){
              Navigator.pushNamed(context,'/');
             },
        
            ),
            
            ],
        ),
      ),
    );
  }
}
