import 'package:flutter/material.dart';
import 'package:my_task/view/All%20Task/Add%20Task/add_task.dart';
import 'package:my_task/view/Homepage/homeScreen/home_screen.dart';
import 'package:my_task/view/Profile/Privacy/Privacy_tab/privacy_tab.dart';

class Privacypage extends StatefulWidget {
  const Privacypage({super.key});

  @override
  State<Privacypage> createState() => _PrivacypageState();
}

class _PrivacypageState extends State<Privacypage> {
  
  
 int idx = 2;
  final List<Widget> pages = [
      HomeBtn(),
      AddTask(),
      PrivacyTab(),
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
