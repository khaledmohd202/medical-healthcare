import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical_healthcare/constants.dart';
import 'package:medical_healthcare/screens/home_screen.dart';
import 'package:medical_healthcare/screens/messages_screen.dart';
import 'package:medical_healthcare/screens/schedule_screen.dart';
import 'package:medical_healthcare/screens/settings_screen.dart';

class NavBarRoots extends StatefulWidget {
  const NavBarRoots({super.key});

  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int _selectedIndex = 0;
  final _screens = [
    //Home Screen
    const HomeScreen(),
    //Messages Screen
    const MessagesScreen(),
    //Schedule Screen
    const ScheduleScreen(),
    //Settings Screen
    const SettingsScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: SizedBox(//container
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items:const [
            BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: 'Home'),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_text),label: 'Messages',),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month),label: 'Schedule'),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: 'Settings'),
          ],
        ),
      ),
    );
  }
}
