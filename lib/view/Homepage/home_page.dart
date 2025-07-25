import 'package:flutter/material.dart';
import 'package:my_task/view/All%20Task/Add%20Task/add_task.dart';
import 'package:my_task/view/Homepage/homeScreen/home_screen.dart';
import 'package:my_task/view/Profile/Profile%20Page/profile_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int idx = 0;
  final List<Widget> pages = [
    HomeBtn(),
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
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
            ),

          BottomNavigationBarItem(
            icon: Icon(Icons.add), 
            label: 'Add Task'
            ),

          BottomNavigationBarItem( 
            icon: Icon(Icons.person),
             label: 'Profile'
             ),
        ],
      ),
    );
  }
}