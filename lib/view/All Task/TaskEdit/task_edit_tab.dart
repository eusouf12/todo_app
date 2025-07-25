import 'package:flutter/material.dart';
import 'package:my_task/common%20widget/common%20btn/custom_btn.dart';
import 'package:my_task/common%20widget/common%20field%20text/custom_text_field.dart';
import 'package:my_task/common%20widget/common%20text/custom_text.dart';

class TaskEditTab extends StatefulWidget {
  const TaskEditTab({super.key});

  @override
  State<TaskEditTab> createState() => _TaskEditTabState();
}

class _TaskEditTabState extends State<TaskEditTab> {
  
  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: ListTile(
          leading: GestureDetector(
             onTap: (){
              Navigator.pushNamed(context,'/homepage');
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
            text: 'Edit Task',
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.center,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              text: 'Task Title',
              fontSize: 14,
              fontWeight: FontWeight.w500,
              lineHeight: 20,
              color: Colors.black,
              top: 5,
              bottom: 6,
            ),
            CustomTextField(hinText: 'e.g. Design Landing Page Header'),
            CustomText(
              text: 'Description',
              lineHeight: 20,
              color: Colors.black,
              fontWeight: FontWeight.w500,
              fontSize: 14,
              top: 23,
              bottom: 6,
            ),
            CustomTextField(
              hinText:
                  'e.g. include logo,navigation and CTA button with brand color',
              maxLings: 3,
              minLines: 1,
              hintFontSize: 16,
              contentPadding: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 10,
              ),
            ),

            SizedBox(height: 23),
            CustomBtn(
              onTap: () {
                Navigator.pushNamed(context, '/homepage');
              },
              title: 'Update Task',
            ),
          ],
        ),
      ),

    );
  }
}
