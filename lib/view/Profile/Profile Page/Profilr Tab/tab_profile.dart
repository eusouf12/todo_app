import 'package:flutter/material.dart';
import 'package:my_task/common%20widget/common%20field%20text/custom_text_field.dart';
import 'package:my_task/common%20widget/common%20text/custom_text.dart';
import 'package:my_task/gen/assets.gen.dart';

class ProfilePageTab extends StatefulWidget {
  const ProfilePageTab({super.key});

  @override
  State<ProfilePageTab> createState() => _ProfilePageTabState();
}

class _ProfilePageTabState extends State<ProfilePageTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /// Picture part
            Column(
              children: [
                // Stack for background + profile overlap
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    // Background image
                    Container(
                      height: 120,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(Assets.images.profilecover.path),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    // Profile hexagon image overlapping
                    Positioned(
                      bottom: -44, // Half overlap
                      left: 0,
                      right: 0,
                      child: Center(
                        child: Container(
                          height: 88,
                          width: 80,
                          decoration: ShapeDecoration(
                            shape: StarBorder.polygon(
                              sides: 6,
                              pointRounding: 0.3,
                              side: const BorderSide(
                                color: Colors.black,
                                width: 1,
                              ),
                            ),
                          ),
                          child: ClipPath(
                            clipper: ShapeBorderClipper(
                              shape: StarBorder.polygon(
                                sides: 6,
                                pointRounding: 0.3,
                              ),
                            ),
                            child: Image.asset(
                              Assets.images.profilepic.path,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 60), 
              ],
            ),

            /// Start field items
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // profile
                  CustomTextField(
                    height: 52,
                    readOnly: true,
                    hinText: 'My ProFile',
                    hintFontSize: 14,
                    textColor: Colors.black,
                    prefixIcon: Icons.person_outline,
                    suffixIconColor: const Color(0xFF6BBA2E),
                    suffixIcon: Icons.arrow_forward_ios,
                    focusBorderColor: Colors.transparent,
                    onTapClick: () {
                      Navigator.pushNamed(context, '/myprofile');
                    },
                  ),
                  const SizedBox(height: 8.5),

                  // setting
                  CustomTextField(
                    height: 52,
                    readOnly: true,
                    hinText: 'Account Setting',
                    hintFontSize: 14,
                    textColor: Colors.black,
                    prefixIcon: Icons.settings,
                    suffixIconColor: const Color(0xFF6BBA2E),
                    suffixIcon: Icons.arrow_forward_ios,
                    focusBorderColor: Colors.transparent,
                    onTapClick: () {
                      Navigator.pushNamed(context, '/accountsettings');
                    },
                  ),
                  const SizedBox(height: 8.5),

                  // More title
                  const CustomText(
                    text: 'More',
                    fontSize: 16,
                    top: 3,
                    bottom: 3,
                    fontWeight: FontWeight.w500,
                    color: Colors.black,
                  ),
                  const SizedBox(height: 8.5),

                  // terms and condition
                  CustomTextField(
                    height: 52,
                    readOnly: true,
                    hinText: 'Terms&Conditions',
                    hintFontSize: 14,
                    textColor: Colors.black,
                    prefixIcon: Icons.description_outlined,
                    suffixIconColor: const Color(0xFF6BBA2E),
                    suffixIcon: Icons.arrow_forward_ios,
                    focusBorderColor: Colors.transparent,
                    onTapClick: () {
                      Navigator.pushNamed(context, '/termconditions');
                    },
                  ),
                  const SizedBox(height: 8.5),

                  // privacy policy
                  CustomTextField(
                    height: 52,
                    readOnly: true,
                    hinText: 'Privacy Policy',
                    hintFontSize: 14,
                    textColor: Colors.black,
                    prefixIcon: Icons.library_books_outlined,
                    suffixIconColor: const Color(0xFF6BBA2E),
                    suffixIcon: Icons.arrow_forward_ios,
                    focusBorderColor: Colors.transparent,
                    onTapClick: () {
                      Navigator.pushNamed(context, '/privacy');
                    },
                  ),
                  const SizedBox(height: 8.5),

                  // help/support
                  CustomTextField(
                    height: 52,
                    readOnly: true,
                    hinText: 'Help/Support',
                    hintFontSize: 14,
                    textColor: Colors.black,
                    prefixIcon: Icons.help_outline,
                    suffixIconColor: const Color(0xFF6BBA2E),
                    suffixIcon: Icons.arrow_forward_ios,
                    focusBorderColor: Colors.transparent,
                    onTapClick: () {
                      Navigator.pushNamed(context, '/help');
                    },
                  ),
                  const SizedBox(height: 8.5),

                  // logout
                  CustomTextField(
                    height: 52,
                    readOnly: true,
                    hinText: 'Log Out',
                    hintFontSize: 14,
                    textColor: Colors.black,
                    prefixIcon: Icons.logout,
                    suffixIconColor: const Color(0xFF6BBA2E),
                    suffixIcon: Icons.arrow_forward_ios,
                    focusBorderColor: Colors.transparent,
                    onTapClick: () {
                      Navigator.pushNamed(context, '/');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
