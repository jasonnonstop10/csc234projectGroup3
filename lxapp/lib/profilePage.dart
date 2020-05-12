// import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_login_page_ui/main.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';


Widget horizontalLine() => Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: ScreenUtil.getInstance().setWidth(120),
        height: 1.0,
        color: Colors.black26.withOpacity(.2),
      ),
    );

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _firestore = Firestore.instance;
  final _auth = FirebaseAuth.instance;

  FirebaseUser loggedInUser;

  @override
  void initState() {
    super.initState();

    getCurrentUser();
  }

  void getCurrentUser() async {
    try {
      final user = await _auth.currentUser();
      if (user != null) {
        loggedInUser = user;
      }
    } catch (e) {
      print(e);
    }
  }

  void userStream() async {
    await for ( var snapshot in _firestore.collection('user').snapshots()) {
      for (var user in snapshot.documents) {
        print(user.data);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        backgroundColor: Colors.white,
        body: Stack(fit: StackFit.expand, children: <Widget>[
          SingleChildScrollView(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 0.0),
              child: Column(
                children: <Widget>[
                  // StreamBuilder <QuerySnapshot> (
                  //   stream: _firestore.collection('user').snapshots(),
                  //   builder: (context, snapshot) {
                  //     if (snapshot.hasData) {
                  //       final user = snapshot.data.documents;
                  //       List<Text> userWidgets = [];
                  //       for (var user in user) {
                  //         final userName = user.data['name'];

                  //         final userWidgets = Text('$userName');
                  //       }
                  //       return Column(
                  //         children: userWidgets
                  //       );
                  //     }
                  //   }),
                  Row(
                    children: <Widget>[],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(50),
                  ),
                  Card(
                      elevation: 4.0,
                      margin: const EdgeInsets.fromLTRB(0, 40.0, 0, 0),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: ListTile(
                        title: Text("Krerkthad",
                            style: TextStyle(
                                fontFamily: "Work-bold",
                                fontSize:
                                    ScreenUtil.getInstance().setHeight(40))),
                        leading: CircleAvatar(
                          backgroundImage: AssetImage('assets/profile.jpg'),
                        ),
                        subtitle: Text("Profile",
                            style: TextStyle(
                                fontFamily: "Work-bold",
                                fontSize:
                                    ScreenUtil.getInstance().setHeight(20),
                                color: Color(0xFFfc315e))),
                        onTap: () {},
                      )),
                  const SizedBox(height: 10.0),
                  Card(
                    elevation: 4.0,
                    margin: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading:
                              Icon(Icons.history, color: Color(0xFFfc315e)),
                          title: Text("History",
                              style: TextStyle(fontFamily: "Work-bold")),
                          trailing: Icon(Icons.keyboard_arrow_right,
                              color: Color(0xFFfc315e)),
                          onTap: () {},
                        ),
                        ListTile(
                          leading: Icon(Icons.lock_outline,
                              color: Color(0xFFfc315e)),
                          title: Text("Change Password",
                              style: TextStyle(fontFamily: "Work-bold")),
                          trailing: Icon(Icons.keyboard_arrow_right,
                              color: Color(0xFFfc315e)),
                          onTap: () {},
                        ),
                        ListTile(
                          leading:
                              Icon(Icons.settings, color: Color(0xFFfc315e)),
                          title: Text("Setting",
                              style: TextStyle(fontFamily: "Work-bold")),
                          trailing: Icon(Icons.keyboard_arrow_right,
                              color: Color(0xFFfc315e)),
                          onTap: () {},
                        ),
                        ListTile(
                          leading:
                              Icon(Icons.lock_open, color: Color(0xFFfc315e)),
                          title: Text("Logout",
                              style: TextStyle(fontFamily: "Work-bold")),
                          trailing: Icon(Icons.keyboard_arrow_right,
                              color: Color(0xFFfc315e)),
                          onTap: () {
                            _auth.signOut();
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MyApp()
                              )
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ))
        ]));
  }
}
