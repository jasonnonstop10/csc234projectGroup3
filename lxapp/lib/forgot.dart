import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Widgets/FormCard.dart';
import 'Widgets/SocialIcons.dart';
import 'CustomIcons.dart';

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
              Padding(
                padding: EdgeInsets.only(top: 20.0),
                child: Image.asset("assets/image_01.png"),
              ),
              Expanded(
                child: Container(),
              ),
              Image.asset("assets/image_02.png")
            ],
          ),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 60.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset(
                        "assets/logo.png",
                        width: ScreenUtil.getInstance().setWidth(110),
                        height: ScreenUtil.getInstance().setHeight(110),
                      ),
                      
                    ],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(180),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                  child: Text("Reset Your Password",
                style: TextStyle(
                    fontSize: ScreenUtil.getInstance().setSp(45),
                    fontFamily: "Poppins-Bold",
                    letterSpacing: .6)),
            
                  ),
                  SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                  
                  Align(
                    alignment: Alignment.centerLeft,
                  child: Text("Email",
                style: TextStyle(
                    fontFamily: "Poppins-Medium",
                    fontSize: ScreenUtil.getInstance().setSp(26)))),
            TextField(
              decoration: InputDecoration(
                  focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.orange,width: 3.0),
                   ),  
                  hintText: "Email",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 12.0)),
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
                                Color(0xFFff9900),
                                Color(0xFFffcc66)
                              ]),
                              borderRadius: BorderRadius.circular(6.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Color(0xFF6078ea).withOpacity(.3),
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
                        style: TextStyle(fontFamily: "Poppins-Medium"),
                      ),
                      InkWell(
                        onTap: () {
                    Navigator.of(context).pop();
                  },
                        child: Text("Login",
                            style: TextStyle(
                                color: Color(0xFFff9900),
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
