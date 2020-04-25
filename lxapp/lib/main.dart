import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/grid.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Widgets/FormCard.dart';

import 'finishReg.dart';

import 'homePage.dart';
import 'register.dart';
import 'forgot.dart';
import 'menu.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
      routes: <String, WidgetBuilder>{
        '/register': (BuildContext context) => new SignupPage(),
        '/forgot': (BuildContext context) => new ForgotPage(),
        '/menu': (BuildContext context) => new MenuPage(),
        '/finish': (BuildContext context) => new FinishReg(),
        '/grid': (BuildContext context) => new GridPage(),
        '/home': (BuildContext context) => new HomePage(),
      },
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  

  

  Widget radioButton(bool isSelected) => Container(
        width: 16.0,
        height: 16.0,
        padding: EdgeInsets.all(2.0),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(width: 2.0, color: Colors.black)),
        child: isSelected
            ? Container(
                width: double.infinity,
                height: double.infinity,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.black),
              )
            : Container(),
      );

  Widget horizontalLine() => Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          width: ScreenUtil.getInstance().setWidth(120),
          height: 1.0,
          color: Colors.black26.withOpacity(.2),
        ),
      );

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
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Image.asset("assets/image_01.png"),
              ),
              Expanded(
                child: Container(),
              ),
              
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 60.0),
              child: Column(
                children: <Widget>[
                 
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(350),
                  ),
                  
                  FormCard(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ForgotPage()));
                        },
                        child: Text("Forgot Password?",
                            style: TextStyle(
                                fontSize: 14,
                                color: Colors.blueGrey[700],
                                fontFamily: "Work-Medium")),
                      )
                    ],
                  ),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
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
                              onTap: () {Navigator.pushNamed(context, "/menu");},
                              child: Center(
                                child: Text("Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "work-Bold",
                                        fontSize: 18,
                                        letterSpacing: 1.0)),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(40),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "New user? ",
                        style: TextStyle(
                          color: Colors.blueGrey[700],
                          fontFamily: "Work-Medium"),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, "/register");
                        },
                        child: Text("Sign up",
                            style: TextStyle(
                                color: Color(0xFFfc315e),
                                fontFamily: "Work-Bold")),
                      ),Text(
                        " here",
                        style: TextStyle(
                           color: Colors.blueGrey[700],
                          fontFamily: "Work-Medium"),
                      )
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(70),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "By creating an account, you agree to our",
                        style: TextStyle(
                          color: Colors.blueGrey[700],
                          fontSize: 10,
                          fontFamily: "Work-Medium"),
                          
                      ),
                      
                      
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                        
                        },
                        child: Text("Terms of Service",
                            style: TextStyle(
                                color: Colors.pinkAccent[400],
                                fontSize: 10,
                                fontFamily: "Work-Bold")),
                      ),
                      Text(
                        " and",
                        style: TextStyle(
                          color: Colors.blueGrey[700],
                          fontSize: 10,
                          fontFamily: "Work-Medium"),
                          
                      ),
                      InkWell(
                        onTap: () {
                         
                        },
                        child: Text(" Privacy Policy",
                            style: TextStyle(
                                color: Colors.pinkAccent[400],
                                fontSize: 10,
                                fontFamily: "work-Bold")),
                      ),
                    ],
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
