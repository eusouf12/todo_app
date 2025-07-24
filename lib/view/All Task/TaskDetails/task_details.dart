import 'package:flutter/material.dart';
import 'package:my_task/common%20widget/common%20btn/custom_btn.dart';
import 'package:my_task/common%20widget/common%20text/custom_text.dart';

class TaskDetails extends StatelessWidget {
  const TaskDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: ListTile(
          leading: Container(
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

          title: CustomText(
            text: 'Task Details',
            fontWeight: FontWeight.w500,
            textAlign: TextAlign.center,
            fontSize: 16,
            color: Colors.black,
          ),
        ),
      ),

      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Card(
          child: Container(
            height: 288,
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLZP8pzkS8sJ7LG_ci7YKM6yBAFRbQPXxISQ&s',
                      ),
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          CustomText(
                            text: 'Task Title',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            lineHeight: 16,
                            color: Colors.black,
                          ),
                          SizedBox(height: 4),
                          CustomText(
                            text: 'Design Landing Page Header',
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 14),
                Container(height: 1, color: const Color(0xFF84C000)),
                const SizedBox(height: 14),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLZP8pzkS8sJ7LG_ci7YKM6yBAFRbQPXxISQ&s',
                      ),
                      width: 24,
                      height: 24,
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          CustomText(
                            text: 'Task Description',
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            lineHeight: 16,
                            color: Colors.black,
                          ),
                          SizedBox(height: 4),
                          CustomText(
                            text:
                                'Create a clean, responsive header section for the landing page. Include logo, navigation menu, search bar, and a primary call-to-action button. Ensure mobile responsiveness and use the brand green',
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                Container(height: 1, color: const Color(0xFF6BBA2E)),
                SizedBox(height: 15,),
                Row(children: [
                  CustomBtn(onTap: (){},
                  title: 'Delete Task',
                  width: 102,
                  titleColor: Colors.black,
                  icon:Icons.delete_outline_outlined,
                  backGroundColor: Colors.transparent,
                  fillColor: Colors.red,
                  fontSize: 12,
                  ),
                  SizedBox(width: 10,),
                  CustomBtn(onTap: (){
                    Navigator.pushNamed(context, '/edittask');
                  },
                  title: "Edit task",
                  width: 102,
                  icon: Icons.edit_note_outlined,
                  backGroundColor: Colors.transparent,
                  fillColor: Color(0xFF6BBA2E),
                  fontSize: 12,
                  titleColor: Colors.black,
                  ),
                  
                ],)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
