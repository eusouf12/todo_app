import 'package:flutter/material.dart';
import 'package:my_task/view/All%20Task/Add%20Task/add_task.dart';
import 'package:my_task/view/Homepage/homeScreen/home_screen.dart';
import 'package:my_task/view/Profile/Profile%20Page/Profilr%20Tab/tab_profile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int idx = 2;
  List<Widget> pages = [
    HomeBtn(),
     AddTask(),
     ProfilePageTab(),
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
        unselectedItemColor: Colors.black,
        selectedItemColor: Color(0xFF7CB350),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'My Task'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add Task'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
