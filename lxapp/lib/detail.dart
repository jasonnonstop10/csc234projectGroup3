

import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/grid.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget horizontalLine() => Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: ScreenUtil.getInstance().setWidth(120),
        height: 1.0,
        color: Colors.black26.withOpacity(.2),
      ),
    );

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil.getInstance()..init(context);
    ScreenUtil.instance =
        ScreenUtil(width: 750, height: 1334, allowFontScaling: true);
    return new Scaffold(
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomPadding: true,
        body: Container(
          decoration: new BoxDecoration(
            gradient: new LinearGradient(
                colors: [const Color(0xFFfc315e), const Color(0xFFfc8e73)],
                begin: FractionalOffset.topLeft,
                end: FractionalOffset.bottomRight,
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 120.0),
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
                SizedBox(
                  height: ScreenUtil.getInstance().setHeight(50),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Text("Detail Test",
                        style: TextStyle(
                          color: Colors.white,
                            fontSize: ScreenUtil.getInstance().setSp(45),
                            fontFamily: "work-Medium",
                            letterSpacing: .6)),
                  ),
                  SizedBox(
                  height: ScreenUtil.getInstance().setHeight(10),
                ),
                  Align(
                    alignment: Alignment.center,
                    child: Text("You account is ready! Tap on Get Started to ",
                        style: TextStyle(
                          color: Colors.white,
                            fontSize: ScreenUtil.getInstance().setSp(25),
                            fontFamily: "work",
                            letterSpacing: .6)),
                  ),
                  SizedBox(
                  height: ScreenUtil.getInstance().setHeight(5),
                ),
                  Align(
                    alignment: Alignment.center,
                    child: Text("proceed.",
                        style: TextStyle(
                          color: Colors.white,
                            fontSize: ScreenUtil.getInstance().setSp(25),
                            fontFamily: "work",
                            letterSpacing: .6)),
                  ),
                  SizedBox(
                  height: ScreenUtil.getInstance().setHeight(100),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    InkWell(
                      child: Container(
                        width: ScreenUtil.getInstance().setHeight(275),
                        height: ScreenUtil.getInstance().setHeight(100),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xFFffffff), Color(0xFFffffff)]),
                            borderRadius: BorderRadius.circular(50.0),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFF000000).withOpacity(.2),
                                  offset: Offset(0.0, 8.0),
                                  blurRadius: 8.0)
                            ]),
                        child: Material(
                          
                          color: Colors.transparent,
                          child: InkWell(
                            onTap: (
                              
                            ) {
                              Route route = MaterialPageRoute(
                                    builder: (context) => GridPage());
                                Navigator.push(context, route);
                            },
                            child: Center(
                              child: Text("Get Started",
                                  style: TextStyle(
                                      color: Colors.pinkAccent,
                                      fontFamily: "Work-Bold",
                                      fontSize: 15,
                                      letterSpacing: 1.0)),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                ),
                
                SizedBox(
                  height: ScreenUtil.getInstance().setHeight(40),
                ),
                
                
              ],
            ),
          ),
        ));
  }
}
