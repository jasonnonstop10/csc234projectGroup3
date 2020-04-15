import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


Widget horizontalLine() => Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: ScreenUtil.getInstance().setWidth(120),
        height: 1.0,
        color: Colors.black26.withOpacity(.2),
      ),
    );

class ForgotPage extends StatefulWidget {
  @override
  _ForgotPageState createState() => _ForgotPageState();
}

class _ForgotPageState extends State<ForgotPage> {
  @override
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
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 60.0),
              child: Column(
                children: <Widget>[
                 
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(180),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text("Forgot Password",
                        style: TextStyle(
                          color: Colors.blueGrey[700],
                            fontSize: ScreenUtil.getInstance().setSp(45),
                            fontFamily: "Poppins-Bold",
                            letterSpacing: .6)),
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(50),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text("Enter the email address you used to create your",
                        style: TextStyle(
                          color: Colors.blueGrey[700],
                            fontSize: ScreenUtil.getInstance().setSp(25),
                            fontFamily: "Poppins",
                            letterSpacing: .6)),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text("account and we will email you a link to reset your",
                        style: TextStyle(
                          color: Colors.blueGrey[700],
                            fontSize: ScreenUtil.getInstance().setSp(25),
                            fontFamily: "Poppins",
                            letterSpacing: .6)),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Text("Password",
                        style: TextStyle(
                          color: Colors.blueGrey[700],
                            fontSize: ScreenUtil.getInstance().setSp(25),
                            fontFamily: "Poppins",
                            letterSpacing: .6)),
                  ),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Email",
                          style: TextStyle(
                            color: Colors.pinkAccent[400],
                              fontFamily: "Poppins-Bold",
                              fontSize: ScreenUtil.getInstance().setSp(26)))),
                  TextField(
                    decoration: InputDecoration(
                        focusedBorder: UnderlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.pinkAccent[400], width: 3.0),
                        ),
                        hintText: "example@kmutt.ac.th",
                        hintStyle:
                            TextStyle(color: Colors.grey, fontSize: 12.0)),
                  ),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        child: Container(
                          width: max(0, 355),
                          height: ScreenUtil.getInstance().setHeight(100),
                          decoration: BoxDecoration(
                              gradient: LinearGradient(colors: [
                                Color(0xFFfc315e),
                                Color(0xFFfd7f70)
                              ]),
                              borderRadius: BorderRadius.circular(6.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xFFfc315e).withOpacity(.5),
                                    offset: Offset(0.0, 8.0),
                                    blurRadius: 8.0)
                              ]),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {},
                              child: Center(
                                child: Text("RESET",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Poppins-Bold",
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
                        "Remember your Password?",
                        style: TextStyle(
                          color: Colors.blueGrey[700],fontFamily: "Poppins-Medium"),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Login",
                            style: TextStyle(
                                color: Colors.pinkAccent[400],
                                fontFamily: "Poppins-Bold")),
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
