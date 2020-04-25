import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/rewardPage.dart';
import 'package:flutter_login_page_ui/homePage.dart';
import 'package:flutter_login_page_ui/profilePage.dart';
import 'package:flutter_login_page_ui/searchingPage.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    HomePage(),
    SearchingPage(),
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
            title: Text("Home"),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            title: Text("Schesdule"),
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.local_activity),
            title: Text("Reward"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
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
