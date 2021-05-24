import 'package:flutter/material.dart';
import 'package:sigma_course/common/theme.dart';
import 'package:sigma_course/ui/home_page.dart';
import 'package:sigma_course/ui/list_page.dart';
import 'package:sigma_course/ui/profile_page.dart';

class BottomNavbar extends StatefulWidget {
  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _bottomNavIndex = 0;

  List<Widget> _listWidget = [
    HomePage(),
    ListPage(),
    ProfilePage(),
  ];

  List<BottomNavigationBarItem> _bottomNavBarItems = [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.list),
      label: 'Class',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profile',
    ),
  ];

  void _onBottomNavTapped(int index) {
    setState(() {
      _bottomNavIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _listWidget[_bottomNavIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _bottomNavIndex,
        backgroundColor: Colors.white,
        elevation: 3,
        selectedItemColor: blue2Color,
        items: _bottomNavBarItems,
        onTap: _onBottomNavTapped,
      ),
    );
  }
}
