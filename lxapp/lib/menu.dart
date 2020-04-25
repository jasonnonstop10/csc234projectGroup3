import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/rewardPage.dart';
import 'package:flutter_login_page_ui/homePage.dart';
import 'package:flutter_login_page_ui/profilePage.dart';
import 'package:flutter_login_page_ui/schesdulePage.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    SchesdulePage(),
    RewardPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _children[_currentIndex], // new
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped, // new
        currentIndex: _currentIndex,
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home",style: TextStyle(
                              fontFamily: "Work-bold")),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            title: Text("Schesdule",style: TextStyle(
                              fontFamily: "Work-bold")),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.local_activity),
            title: Text("Reward",style: TextStyle(
                              fontFamily: "Work-bold")),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile",style: TextStyle(
                              fontFamily: "Work-bold")),
          ),
        ],
        selectedItemColor: Color(0xFFfc315e),
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
