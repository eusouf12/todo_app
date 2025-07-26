import 'package:flutter/material.dart';
import 'package:my_task/common%20widget/common%20field%20text/custom_text_field.dart';
import 'package:my_task/common%20widget/common%20text/custom_text.dart';
import 'package:my_task/common%20widget/custom%20toast/custom_toast.dart';

class AccountSettingTab extends StatefulWidget {
  const AccountSettingTab({super.key});

  @override
  State<AccountSettingTab> createState() => _AccountSettingTabState();
}

class _AccountSettingTabState extends State<AccountSettingTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: ListTile(
          leading: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/profilepage');
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
            text: 'Account Setting',
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.center,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: [
            CustomTextField(
              onTapClick: () {
                Navigator.pushNamed(context, '/changepassword');
              },
              prefixIcon: Icons.lock_clock_outlined,
              suffixIcon: Icons.arrow_forward_ios,
              suffixIconColor: Color(0xFF6BBA2E),
              hinText: 'Change Password',
              textColor: Colors.black,
              focusBorderColor: Colors.transparent,
              readOnly: true,
            ),
            SizedBox(height: 8),
            CustomTextField(
              onTapClick: () {
                showCommonToast(
                  type: ToastType.warning,
                  message:
                      "Are you sure you want to permanently delete your account? This action cannot be undone.",
                  onConfirm: () {
                    showCommonToast(
                      type: ToastType.success,
                      message: "Your account has been deleted successfully.",
                    );
                  },
                );
              },

              prefixIcon: Icons.person_off_outlined,
              suffixIcon: Icons.arrow_forward_ios,
              suffixIconColor: Colors.red,
              hinText: 'Delete Account',
              textColor: Colors.red,
              readOnly: true,
              focusBorderColor: Colors.transparent,
            ),
          ],
        ),
      ),
    );
  }
}
