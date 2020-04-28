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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Flexible(
                      child: InkWell(
                        child: Container(
                          padding: const EdgeInsets.only(top: 130.0,right: 50),
                          width: max(0,150),
                          height: ScreenUtil.getInstance().setHeight(200),
                          decoration: new BoxDecoration(image: new DecorationImage(image: new AssetImage("assets/pizza.jpg"), fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(10.0)),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                              },
                              child: Center(
                                child: Text("Free pizza",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: "Work-Bold",
                                        fontSize: 18,
                                        letterSpacing: 1.0,
                                        )),     
                              ),
                            ),
                            
                          ),
                        ),
                      )
                      )],
                  ),
                ],)
                ),
    ),
    ]));
  }
}
