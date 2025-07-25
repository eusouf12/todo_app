import 'package:flutter/material.dart';
import 'package:my_task/gen/assets.gen.dart';
import 'package:my_task/common%20widget/common%20btn/custom_btn.dart';
import 'package:my_task/common%20widget/common%20field%20text/custom_text_field.dart';
import 'package:my_task/common%20widget/common%20text/custom_text.dart';

class EProfileTab extends StatefulWidget {
  const EProfileTab({super.key});

  @override
  State<EProfileTab> createState() => _EProfileTabState();
}

class _EProfileTabState extends State<EProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: ListTile(
          leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/profiletab');
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
            text: 'Edit Profile',
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.center,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
        child: Form(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 150,
                  child: Stack(
                    children: [
                      Center(
                        child: ClipOval(
                          child: Image(
                            image: AssetImage(Assets.images.manicon.path),
                            fit: BoxFit.cover,
                            height: 120,
                            width: 120, 
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 20,
                        right: 170,
                        child: Container(
                          height: 32,
                          width: 32,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color(0xFFF7FFEF),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 4,
                                offset: Offset(0, 2),
                              ),
                            ],
                          ),
                          child: Icon(Icons.camera_alt_outlined,
                          size: 20,
                          color: Colors.grey,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              
                CustomText(
                  text: 'First Name',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  lineHeight: 20,
                  color: Colors.black,
                  top: 0,
                  bottom: 12,
                ),
                CustomTextField(
                  hinText: 'e.g. Kristin',
                  formFieldValidator: (a) =>
                      a.isEmpty ? 'Enter Your First Name' : null,
                ),
                SizedBox(height: 23),
                // lastname
                CustomText(
                  text: 'Last Name',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  lineHeight: 20,
                  color: Colors.black,
                  top: 0,
                  bottom: 12,
                ),
                CustomTextField(
                  hinText: 'e.g Cooper',
                  formFieldValidator: (a) =>
                      a.isEmpty ? 'Enter Your Last Name' : null,
                ),

                SizedBox(height: 23),
                // Email
                CustomText(
                  text: 'Email Address',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  lineHeight: 20,
                  color: Colors.black,
                  top: 0,
                  bottom: 12,
                ),
                CustomTextField(
                  hinText: 'kristin.cooper@gmail.com',
                  formFieldValidator: (a) =>
                      a.isEmpty ? 'Enter Your Email' : null,
                ),

                SizedBox(height: 23),
                // Address
                CustomText(
                  text: 'Address',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  lineHeight: 20,
                  color: Colors.black,
                  top: 5,
                  bottom: 12,
                ),
                CustomTextField(
                  hinText: 'e.g. 1234 Elm Street,Springfield, lL',
                  formFieldValidator: (a) =>
                      a.isEmpty ? 'Enter Your Address' : null,
                ),

                SizedBox(height: 23),
                CustomBtn(
                  onTap: () {
                    Navigator.pushNamed(context, '/profilepage');
                  },
                  title: 'Update',
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
