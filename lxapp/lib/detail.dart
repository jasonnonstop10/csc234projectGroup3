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
        resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
          child: Container(
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
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Brightlight Festival",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil.getInstance().setSp(45),
                          fontFamily: "work-Bold",
                          letterSpacing: .6)),
                ),
                SizedBox(
                  height: ScreenUtil.getInstance().setHeight(10),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Friday, 24 Aug 2020",
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
                  alignment: Alignment.centerLeft,
                  child: Text("F.1, LX Building",
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
                  alignment: Alignment.centerLeft,
                  child: Text("2 hours",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil.getInstance().setSp(25),
                          fontFamily: "work",
                          letterSpacing: .6)),
                ),
                SingleChildScrollView(
                child: Card(
                  elevation: 4.0,
                  margin: const EdgeInsets.fromLTRB(0, 8.0, 0, 8.0),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        
                        title: Text("Detail",
                            style: TextStyle(fontFamily: "Work-bold")),
                        
                        
                      ),
                      ListTile(
                        
                        title: Text("Free directories: directories are perfect for customers that are searching for a particular topic. What’s great about them is that you only have to post once and they are good for long periods of time. It saves a lot of your time when you don’t have to resubmit your information every week…",
                            style: TextStyle(fontFamily: "Work-regular")),
                        
                        
                      ),
                      ListTile(
                        
                        title: Text("Read more",
                            style: TextStyle(fontFamily: "Work-bold",color: Color(0xFFfc315e))),
                       
                      
                        onTap: () {},
                      ),
                     ListTile(
                        
                        title: Text("Update",
                            style: TextStyle(fontFamily: "Work-bold")),
                        
                        
                      ),
                      ListTile(
                        
                        title: Text("Free directories: directories are perfect for customers that are searching for a particular topic. What’s great about them is that you only have to post once and they are good for long periods of time. It saves a lot of your time when you don’t have to resubmit your information every week…",
                            style: TextStyle(fontFamily: "Work-regular")),
                        
                        
                      ),
                      ListTile(
                        
                        title: Text("Read more",
                            style: TextStyle(fontFamily: "Work-bold",color: Color(0xFFfc315e))),
                       
                      
                        onTap: () {},
                      ),
                      ListTile(
                        
                        title: Text("Location",
                            style: TextStyle(fontFamily: "Work-bold")),
                        
                        
                      ),
                      ListTile(
                        
                        title: Text("Map Here",
                            style: TextStyle(fontFamily: "Work-regular")),
                        
                        
                      ),
                      ListTile(
                        
                        title: Text("F1, LX Building",
                            style: TextStyle(fontFamily: "Work-bold",color: Color(0xFF80848B))),
                       
                      
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                ),
                SizedBox(
                  height: ScreenUtil.getInstance().setHeight(40),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                        child: InkWell(
                      child: Container(
                        width: max(0, 355),
                        height: ScreenUtil.getInstance().setHeight(100),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Color(0xFFfd7f70), Color(0xFFfc315e)]),
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
                            onTap: () {},
                            child: Center(
                              child: Text("Join",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Work-medium",
                                      fontSize: 18,
                                      letterSpacing: 1.0)),
                            ),
                          ),
                        ),
                      ),
                    ))
                  ],
                ),
                SizedBox(
                  height: ScreenUtil.getInstance().setHeight(60),
                ),
              ],
            ),
          ),
          ),
        ));
  }
}
