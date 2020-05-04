

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

class MapPage extends StatefulWidget {
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
      moveToLastScreen();
    },
        child: Scaffold(
        appBar: AppBar(
          title: new Text(
              "Map",
              style: const TextStyle(
                  color:  const Color(0xFF373A42),
                  fontWeight: FontWeight.w500,
                  fontFamily: "Work-bold",
                  fontStyle:  FontStyle.normal,
                  fontSize: 32.0

              )),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
        leading: IconButton(icon: Icon(
        Icons.arrow_back_ios,
            color:  const Color(0xFF373A42)),
        onPressed: (){
        moveToLastScreen();
    },
    ),
    ),
        body: Stack(fit: StackFit.expand,
            children: <Widget>[
      SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.only(left: 50.0, right: 28.0, top: 0.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                Row(
                  children: <Widget>[],
                ),
                SizedBox(
                  height: ScreenUtil.getInstance().setHeight(0),
                ),
                SizedBox(height: ScreenUtil.getInstance().setHeight(30)),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("LX Building Form SIT Side",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFFfc315e),
                              fontFamily: "Work-Medium")),
                    ),
                
                Row(children:<Widget>[
                    Image.asset("assets/lx1.jpg",width: ScreenUtil.getInstance().setHeight(500),),

                ]),
                SizedBox(height: ScreenUtil.getInstance().setHeight(50)),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Co-working space on left hand side",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFFfc315e),
                              fontFamily: "Work-Medium")),
                    ),
               
               Row(children:<Widget>[
                  Image.asset("assets/lx2.jpg",width: ScreenUtil.getInstance().setHeight(500),),

                ]),

                SizedBox(height: ScreenUtil.getInstance().setHeight(50)),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Co-working space",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFFfc315e),
                              fontFamily: "Work-Medium")),
                    ),
                
                Row(children:<Widget>[
                  Image.asset("assets/lx3.jpg",width: ScreenUtil.getInstance().setHeight(500),),

                ]),
                SizedBox(height: ScreenUtil.getInstance().setHeight(50)),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Co-working space",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFFfc315e),
                              fontFamily: "Work-Medium")),
                    ),
                
                  Row(children:<Widget>[
                  Image.asset("assets/lx4.jpg",width: ScreenUtil.getInstance().setHeight(500),),

                ]),
                SizedBox(height: ScreenUtil.getInstance().setHeight(50)),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Activity room",
                          style: TextStyle(
                              fontSize: 18,
                              color: Color(0xFFfc315e),
                              fontFamily: "Work-Medium")),
                    ),
                 Row(children:<Widget>[
                  Image.asset("assets/lx5.jpg",width: ScreenUtil.getInstance().setHeight(500),),

                ]),
                    SizedBox(height: ScreenUtil.getInstance().setHeight(50)),
              ])))
    ])));
  }
  void moveToLastScreen() {
    Navigator.pop(context);
  }
}
