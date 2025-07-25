import 'package:flutter/material.dart';
import 'package:my_task/view/All%20Task/Add%20Task/add_task.dart';
import 'package:my_task/view/All%20Task/TaskEdit/task_edit_tab.dart';
import 'package:my_task/view/Profile/Profile%20Page/profile_page.dart';

class TaskEdit extends StatefulWidget {
  const TaskEdit({super.key});

  @override
  State<TaskEdit> createState() => _TaskEditState();
}

class _TaskEditState extends State<TaskEdit> {
 
  int idx = 0;
  final List<Widget> pages = [
    TaskEditTab(),
    AddTask(),
    ProfilePage()
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body:pages[idx],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: idx,
         onTap: (index) {
          setState(() {
            idx = index;
          });
        },
        selectedItemColor: Color(0xFF7CB350),
        unselectedItemColor: Colors.black,

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Task'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
