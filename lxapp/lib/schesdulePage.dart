import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'mapPage.dart';
import 'detail.dart';
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
                    child: Text("Schesdule",
                        style: TextStyle(
                            color: Color(0xFF373A42),
                            fontFamily: "Work-bold",
                            fontSize: ScreenUtil.getInstance().setSp(56)))),
                SizedBox(height: ScreenUtil.getInstance().setHeight(50)),
                Row(children: <Widget>[
                  Flexible(

                          child: Card(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                const ListTile(
                                  leading: Icon(Icons.calendar_today),
                                  title: Text('SIT DD: Quiz in Microsoft Team',
                                      style: TextStyle(
                                          fontFamily: "Work-bold",
                                          color: Colors.black)),
                                  subtitle: Text('Lx building',
                                      style: TextStyle(
                                          fontFamily: "Work-bold",
                                          color: Color(0xFFfc315e))),
                                ),
                                ButtonBar(
                                  children: <Widget>[
                                    FlatButton(
                                      child: const Text('View detail',
                                          style: TextStyle(
                                              fontFamily: "Work-bold",
                                      )),
                                      onPressed: () {Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Detail()),
                            );},
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.map),
                                     
                                      onPressed: () {  Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MapPage()),
                            );},
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ))
                ]),
                SizedBox(height: ScreenUtil.getInstance().setHeight(25)),
//                  Row(children: <Widget>[
//                  Flexible(
//
//                          child: Card(
//                            child: Column(
//                              mainAxisSize: MainAxisSize.min,
//                              children: <Widget>[
//                                const ListTile(
//                                  leading: Icon(Icons.calendar_today),
//                                  title: Text('Open Lx building',
//                                      style: TextStyle(
//                                          fontFamily: "Work-bold",
//                                          color: Colors.black)),
//                                  subtitle: Text('Lx building',
//                                      style: TextStyle(
//                                          fontFamily: "Work-bold",
//                                          color: Color(0xFFfc315e))),
//                                ),
//                                ButtonBar(
//                                  children: <Widget>[
//                                    FlatButton(
//                                      child: const Text('View detail',
//                                          style: TextStyle(
//                                              fontFamily: "Work-bold",
//                                      )),
//                                      onPressed: () {},
//                                    ),
//                                    IconButton(
//                                      icon: Icon(Icons.map),
//
//                                      onPressed: () {},
//                                    ),
//                                  ],
//                                ),
//                              ],
//                            ),
//                          ))
//                ])
              ])))
    ]));
  }
}
