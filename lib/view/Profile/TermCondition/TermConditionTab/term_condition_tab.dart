import 'package:flutter/material.dart';
import 'package:my_task/common%20widget/common%20text/custom_text.dart';

class TermsConditionTab extends StatefulWidget {
  const TermsConditionTab({super.key});

  @override
  State<TermsConditionTab> createState() => _TermsConditionTabState();
}

class _TermsConditionTabState extends State<TermsConditionTab> {
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
            text: 'Terms&Condition',
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.center,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: 'Terms & Conditions',
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                bottom: 6,
              ),
              CustomText(
                text: "Welcome to the Task Manager App. By accessing or using this application, you agree to the following terms and conditions:",
                fontSize: 12,
                color: Colors.black,
                bottom: 15,
              ),

              CustomText(
                text: '1. Use of the App',
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                bottom: 6,
              ),
              CustomText(
                text: "This app is designed to help users create, manage, and track personal or professional tasks efficiently. By using the app, you agree to use it responsibly and only for lawful purposes.",
                fontSize: 12,
                color: Colors.black,
                bottom: 15,
              ),

              CustomText(
                text: '2. Accuracy of Information',
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                bottom: 6,
              ),
              CustomText(
                text: "All tasks, notes, and other information entered by the user are stored securely. While we strive to maintain accurate task management functionality, the app is not responsible for missed deadlines, incorrect entries, or user-generated errors.",
                fontSize: 12,
                color: Colors.black,
                bottom: 15,
              ),

              CustomText(
                text: '3. User Responsibility',
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                bottom: 6,
              ),
              CustomText(
                text: "Users are solely responsible for managing their tasks, reminders, and any personal or professional outcomes related to the completion or non-completion of tasks created within the app.",
                fontSize: 12,
                color: Colors.black,
                bottom: 15,
              ),

              CustomText(
                text: '4. Data Collection',
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                bottom: 6,
              ),
              CustomText(
                text: "We respect your privacy. The Task Manager App may collect limited personal data (such as name, email, and usage patterns) solely for improving user experience. No data is shared with third parties without user consent.",
                fontSize: 12,
                color: Colors.black,
                bottom: 15,
              ),

              CustomText(
                text: '5. Limitation of Liability',
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                bottom: 6,
              ),
              CustomText(
                text: "We are not liable for any loss of productivity, missed deadlines, or damages resulting from your use of the app. The app is a productivity tool and should be used at your discretion.",
                fontSize: 12,
                color: Colors.black,
                bottom: 15,
              ),

              CustomText(
                text: '6. Third-Party Links',
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                bottom: 6,
              ),
              CustomText(
                text: "If the app connects to any third-party tools (e.g., calendar, email), we are not responsible for their data policies or service availability. Use of such services is subject to their respective terms.",
                fontSize: 12,
                color: Colors.black,
                bottom: 15,
              ),

              CustomText(
                text: '7. Changes to Terms',
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                bottom: 6,
              ),
              CustomText(
                text: "We reserve the right to update these Terms & Conditions at any time. Continued use of the app following any changes will constitute your acceptance of those revised terms.",
                fontSize: 12,
                color: Colors.black,
                bottom: 15,
              ),
            ],

          ),
        ),
      ),
    );
  }
}
