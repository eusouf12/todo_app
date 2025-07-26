import 'package:flutter/material.dart';
import 'package:my_task/view/All%20Task/Add%20Task/add_task.dart';
import 'package:my_task/view/Homepage/homeScreen/home_screen.dart';
import 'package:my_task/view/Profile/Profile%20Page/Profilr%20Tab/tab_profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int idx = 0;
  final List<Widget> pages = [HomeBtn(), AddTask(), ProfilePageTab()];

  @override
  Widget build(BuildContext context) {
    Widget navIcon(IconData icon, int index) {
      bool isSelected = idx == index;
      return Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF7CB350) : Colors.transparent,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, color: isSelected ? Colors.white : Colors.black),
      );
    }

    return Scaffold(
      body: pages[idx],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: idx,
        onTap: (index) {
          setState(() {
            idx = index;
          });
        },
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        elevation: 8,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: [
          BottomNavigationBarItem(
            icon: navIcon(Icons.home, 0),
          label: idx == 0 ? '' : 'My Tasks',
          ),
          BottomNavigationBarItem(
            icon: navIcon(Icons.add, 1),
             label: idx == 1 ? '' :'Add Task',
          ),
          BottomNavigationBarItem(
            icon: navIcon(Icons.person, 2),
             label: idx == 1 ? '' : 'Profile',
          ),
        ],
      ),
    );
  }
}
