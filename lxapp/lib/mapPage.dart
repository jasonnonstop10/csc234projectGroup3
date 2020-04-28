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
    return new Scaffold(
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
                  height: ScreenUtil.getInstance().setHeight(120),
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("Map",
                        style: TextStyle(
                            color: Color(0xFF373A42),
                            fontFamily: "Work-bold",
                            fontSize: ScreenUtil.getInstance().setSp(56)))),
                SizedBox(height: ScreenUtil.getInstance().setHeight(50)),
                Row(children:<Widget>[
                    Image.asset("assets/lx1.jpg",width: 300,),

                ]),
                SizedBox(height: ScreenUtil.getInstance().setHeight(50)),
                Row(children:<Widget>[
                  Image.asset("assets/lx2.jpg",width: 300,),

                ]),
                SizedBox(height: ScreenUtil.getInstance().setHeight(50)),
                Row(children:<Widget>[
                  Image.asset("assets/lx3.jpg",width: 300,),

                ]),
                SizedBox(height: ScreenUtil.getInstance().setHeight(50)),
                Row(children:<Widget>[
                  Image.asset("assets/lx4.jpg",width: 300,),

                ]),
                SizedBox(height: ScreenUtil.getInstance().setHeight(50)),
                Row(children:<Widget>[
                  Image.asset("assets/lx5.jpg",width: 300,),

                ]),
                    SizedBox(height: ScreenUtil.getInstance().setHeight(50)),
              ])))
    ]));
  }
}
