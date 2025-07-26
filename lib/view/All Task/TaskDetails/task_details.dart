import 'package:flutter/material.dart';
import 'package:my_task/view/All%20Task/Add%20Task/add_task.dart';
import 'package:my_task/view/All%20Task/TaskDetails/task_details_tab.dart';
import 'package:my_task/view/Profile/Profile%20Page/profile_page.dart';

class TaskDetails extends StatefulWidget {
  const TaskDetails({super.key});

  @override
  State<TaskDetails> createState() => _TaskEditState();
}

class _TaskEditState extends State<TaskDetails> {
  int idx = 0;
  final List<Widget> pages = [
    TaskDetailsTab(),
     AddTask(),
      ProfilePage()
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[idx],

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
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'My Task'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Task'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}


