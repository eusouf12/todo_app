import 'package:flutter/material.dart';
import 'package:my_task/view/All%20Task/Add%20Task/add_task.dart';
import 'package:my_task/view/All%20Task/TaskDetails/task_details.dart';
import 'package:my_task/view/All%20Task/TaskEdit/task_edit.dart';
import 'package:my_task/view/Homepage/home_page.dart';
import 'package:my_task/view/Login/log_in.dart';
import 'package:my_task/view/Profile/Account%20Setting/account_setting.dart';
import 'package:my_task/view/Profile/Change%20Password/change_password.dart';
import 'package:my_task/view/Profile/Edit%20Profile/edit_profile.dart';
import 'package:my_task/view/Profile/HelpSupport/help_support.dart';
import 'package:my_task/view/Profile/My%20profile/my_profile.dart';
import 'package:my_task/view/Profile/Privacy/privacy.dart';
import 'package:my_task/view/Profile/Profile%20Page/Profilr%20Tab/tab_profile.dart';
import 'package:my_task/view/Profile/Profile%20Page/profile_page.dart';
import 'package:my_task/view/Profile/TermCondition/term_condition.dart';
import 'package:my_task/view/Verifymail_otp/Email%20Verify/email_verify.dart';
import 'package:my_task/view/Verifymail_otp/Otp/otp_verify.dart';
import 'package:my_task/view/Verifymail_otp/Set%20Pass/set_pass.dart';
import 'package:my_task/view/sign%20up/sign_up.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';




void main() {
  runApp(
    DevicePreview(
      enabled: !const bool.fromEnvironment(
        'dart.vm.product',
      ), 
      builder: (context) => const MyApp(), 
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          locale: DevicePreview.locale(context),
          builder: DevicePreview.appBuilder,
          theme: ThemeData(textTheme: GoogleFonts.poppinsTextTheme()),
          debugShowCheckedModeBanner: false,
          title: "Todo App",

          initialRoute: '/',

          routes: {
            '/': (context) => const Login(),
            '/signup': (context) => const SignUp(),
            '/homepage': (context) => const HomePage(),
            '/verifyemail': (context) => const EmailVerify(),
            '/otpverify': (context) => const OtpVerify(),
            '/setpassword': (context) => const SetPassWord(),
            '/addtask': (context) => const AddTask(),
            '/detailtask': (context) => const TaskDetails(),
            '/edittask': (context) => const TaskEdit(),
            '/profilepage': (context) => const ProfilePage(),
            '/myprofile': (context) => const MyProfile(),
            '/accountsettings': (context) => const AccountSetting(),
            '/changepassword': (context) => const ChangePassword(),
            '/editprofile': (context) => const EditProfile(),
            '/termconditions': (context) => const TermCondition(),
            '/privacy': (context) => const Privacypage(),
            '/help': (context) => const HelpSupport(),
            '/profiletab': (context) => const ProfilePageTab(),
          },
        );
      },
    );
  }
}
