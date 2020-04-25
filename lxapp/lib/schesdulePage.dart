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

class SchesdulePage extends StatefulWidget {
  @override
  _SchesdulePageState createState() => _SchesdulePageState();
}

class _SchesdulePageState extends State<SchesdulePage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: Stack(
            fit: StackFit.expand,
            children: <Widget>[
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
                    child: Text("Scheadule",
                        style: TextStyle(
                            color: Color(0xFF373A42),
                            fontFamily: "Work-bold",
                            fontSize: ScreenUtil.getInstance().setSp(56))))
              ])))
    ]));
  }
}
