import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/finishReg.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget horizontalLine() => Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: ScreenUtil.getInstance().setWidth(120),
        height: 1.0,
        color: Colors.black26.withOpacity(.2),
      ),
    );

class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  String name;
  String std;
  String email;
  String password;

  
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true);
    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: true,
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Expanded(
                child: Container(),
              ),
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 0.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(180),
                  ),
                  CircleAvatar(
                    radius: 75,
                    backgroundColor: Color(0xffffffff),
                    child: CircleAvatar(
                      radius: 70,
                      backgroundImage: AssetImage('assets/profile.jpg'),
                    ),
                  ),
                  InkWell(
                        onTap: () {
                          
                        },
                        child: Text("Upload Picture",
                            style: TextStyle(
                                color: Color(0xFFfd7f70),
                                fontFamily: "Work-bold")),
                      ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(40),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Name",
                          style: TextStyle(
                              color: Color(0xFFfd7f70),
                              fontFamily: "Work-medium",
                              fontSize: ScreenUtil.getInstance().setSp(26)))),
                  TextField(
                    onChanged: (value) {
                      name = value;
                    },
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xFFfd7f70), width: 3.0),
                        ),
                        hintText: "YourName YourSurname",
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 12.0,fontFamily: "Work-thin")),
                  ),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Student ID",
                          style: TextStyle(
                              color: Color(0xFFfd7f70),
                              fontFamily: "Work-medium",
                              fontSize: ScreenUtil.getInstance().setSp(26)))),
                  TextField(
                    onChanged: (value) {
                      std = value;
                    },
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xFFfd7f70), width: 3.0),
                        ),
                        hintText: "Your Student Id",
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 12.0,fontFamily: "Work-thin")),
                  ),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Email",
                          style: TextStyle(
                              color: Color(0xFFfd7f70),
                              fontFamily: "Work-medium",
                              fontSize: ScreenUtil.getInstance().setSp(26)))),
                  TextField(
                    onChanged: (value) {
                      email = value;
                    },
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xFFfd7f70), width: 3.0),
                        ),
                        hintText: "example@mail.kmutt.ac.th",
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 12.0,fontFamily: "Work-thin")),
                  ),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Password",
                          style: TextStyle(
                              color: Color(0xFFfd7f70),
                              fontFamily: "Work-medium",
                              fontSize: ScreenUtil.getInstance().setSp(26)))),
                  TextField(
                    obscureText: true,
                    onChanged: (value) {
                      password = value;
                    },
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xFFfd7f70), width: 3.0),
                        ),
                        hintText: "••••••••",
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 12.0)),
                  ),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Confirm Password",
                          style: TextStyle(
                              color: Color(0xFFfd7f70),
                              fontFamily: "Work-medium",
                              fontSize: ScreenUtil.getInstance().setSp(26)))),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                              color: Color(0xFFfd7f70), width: 3.0),
                        ),
                        hintText: "••••••••",
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 12.0)),
                  ),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                        child:InkWell(
                        child: Container(
                          width: max(0, 355),
                          height: ScreenUtil.getInstance().setHeight(100),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xFFfd7f70),Color(0xFFfc315e)
                                
                              ]),
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xFFfc315e).withOpacity(.5),
                                    offset: Offset(5.0, 17.0),
                                    blurRadius: 25.0)
                              ]),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              
                              onTap: () {
                                Route route = MaterialPageRoute(
                                    builder: (context) => FinishReg());
                                Navigator.push(context, route);
                              },
                              child: Center(
                                child: Text("Sign up",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Work-medium",
                                        fontSize: 18,
                                        letterSpacing: 1.0)),
                              ),
                            ),
                          ),
                        ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(40),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "You already have an account?",
                        style: TextStyle(fontFamily: "Work-medium",
                        fontSize: 12,
                        color: Colors.blueGrey[700]),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Login",
                            style: TextStyle(
                                color: Color(0xFFfd7f70),
                                fontSize: 12,
                                fontFamily: "Work-bold")),
                      )
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(40),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
