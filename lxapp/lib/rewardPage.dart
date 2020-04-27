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

class RewardPage extends StatefulWidget {
  @override
  _RewardPageState createState() => _RewardPageState();
}

class _RewardPageState extends State<RewardPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Stack(fit: StackFit.expand, children: <Widget>[
      SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.only(left: 28.0, right: 28.0, top: 0.0),
              child: Column(children: <Widget>[
                Row(
                  children: <Widget>[],
                ),
                SizedBox(
                  height: ScreenUtil.getInstance().setHeight(120),
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Reward",
                        style: TextStyle(
                            color: Color(0xFF373A42),
                            fontFamily: "Work-bold",
                            fontSize: ScreenUtil.getInstance().setSp(56)))),
                SizedBox(height: ScreenUtil.getInstance().setHeight(50)),
                Row(
                  children: <Widget>[
                    Flexible(
                      child: InkWell(
                        child: Container(
                          width: max(0, 355),
                          height: ScreenUtil.getInstance().setHeight(400),
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
                              },
                              child: Center(
                                child: Text("Freeburger",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Work-medium",
                                        fontSize: 18,
                                        letterSpacing: 1.0)),
                                        
                                        
                              ),
                              
                              
                            ),
                            
                          ),
                        ),
                      )
                      )
                  ],
                ),
              ]))),
    ]));
  }
}
