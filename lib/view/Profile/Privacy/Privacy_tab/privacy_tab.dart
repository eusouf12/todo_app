import 'package:flutter/material.dart';
import 'package:my_task/common%20widget/common%20text/custom_text.dart';

class PrivacyTab extends StatefulWidget {
  const PrivacyTab({super.key});

  @override
  State<PrivacyTab> createState() => _PrivacyTabState();
}

class _PrivacyTabState extends State<PrivacyTab> {
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
            text: 'Privacy Policy',
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.center,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomText(
                text: 'Privacy Policy',
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                bottom: 6,
              ),
              const CustomText(
                text:
                    "Your privacy is important to us. This Privacy Policy outlines how the Task Manager App handles your information and protects your data.",
                fontSize: 12,
                color: Colors.black,
                bottom: 15,
              ),

              const CustomText(
                text: '1. Information Collection',
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                bottom: 6,
              ),
              const CustomText(
                text:
                    "The Task Manager App may collect limited information such as your name, email address, and preferences — strictly for the purpose of enhancing your task management experience. We do not collect sensitive personal information unnecessarily.",
                fontSize: 12,
                color: Colors.black,
                bottom: 15,
              ),

              const CustomText(
                text: '2. Local Storage',
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                bottom: 6,
              ),
              const CustomText(
                text:
                    "Your tasks, subtasks, and user preferences are securely stored in our system or locally on your device (depending on platform settings). This data is used solely to support the app's features like scheduling, notifications, and user customization.",
                fontSize: 12,
                color: Colors.black,
                bottom: 15,
              ),

              const CustomText(
                text: '3. No Tracking',
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                bottom: 6,
              ),
              const CustomText(
                text:
                    "We do not use third-party trackers or intrusive analytics tools to monitor your behavior. Any performance monitoring is strictly anonymized and used internally to improve the app experience.",
                fontSize: 12,
                color: Colors.black,
                bottom: 15,
              ),

              const CustomText(
                text: '4. Static Data Display',
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                bottom: 6,
              ),
              const CustomText(
                text:
                    "If the app integrates with external tools (e.g., calendar, cloud storage), those services are governed by their own privacy policies. We do not control or assume responsibility for their data handling practices.",
                fontSize: 12,
                color: Colors.black,
                bottom: 15,
              ),

              const CustomText(
                text: '5. Third-Party Services',
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                bottom: 6,
              ),
              const CustomText(
                text:
                    "We implement industry-standard measures to ensure your information is protected from unauthorized access, alteration, or misuse. This includes encryption, secure servers, and routine maintenance.",
                fontSize: 12,
                color: Colors.black,
                bottom: 15,
              ),

              const CustomText(
                text: '6. Data Security',
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                bottom: 6,
              ),
              const CustomText(
                text:
                    "You retain full control over your account data. You can delete or export your tasks and personal information at any time through your profile settings (if applicable).",
                fontSize: 12,
                color: Colors.black,
                bottom: 15,
              ),

              const CustomText(
                text: '7. Policy Updates',
                fontSize: 14,
                color: Colors.black,
                fontWeight: FontWeight.w500,
                bottom: 6,
              ),
              const CustomText(
                text:
                    "This Privacy Policy may be updated periodically. Any changes will be clearly communicated within the app. Continued use after updates indicates your acceptance of the revised policy.\n\nIf you have any questions or concerns regarding privacy, please contact us at support@taskmanagerapp.com.",
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
