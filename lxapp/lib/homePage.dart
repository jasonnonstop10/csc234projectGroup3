import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/detail.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget horizontalLine() => Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: ScreenUtil.getInstance().setWidth(120),
        height: 1.0,
        color: Colors.black26.withOpacity(.2),
      ),
    );

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
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
              padding: EdgeInsets.only(left: 18.0, right: 18.0, top: 0.0),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[],
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(120),
                  ),
                  
                  
                  
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("For you",
                          style: TextStyle(
                              color: Color(0xFF373A42),
                              fontFamily: "Work-bold",
                              fontSize: ScreenUtil.getInstance().setSp(56)))),
                  
                  SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                  Card(
                    elevation: 4.0,
                    margin: const EdgeInsets.fromLTRB(1.0, 8.0, 1.0, 8.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      children: <Widget>[
                        Image.asset('assets/eventpic1.jpg'),
                        ListTile(
                         
                          title: Text("SIT DD",
                              style: TextStyle(fontFamily: "Work-bold",fontSize: 30,color: Color(0xFF373A42))),
                          
                              onTap: () {
                                Route route = MaterialPageRoute(
                                    builder: (context) => Detail());
                                Navigator.push(context, route);
                              },
                              
                          
                        ),
                        ListTile(
                         
                          title: Text("Friday AUG 24, 9 AM ",
                              style: TextStyle(fontFamily: "Work-bold",fontSize: 16,color: Color(0xFF80848B))),
                          
                              onTap: () {
                                Route route = MaterialPageRoute(
                                    builder: (context) => Detail());
                                Navigator.push(context, route);
                              },
                              
                          
                        ),
                        
                       
                      ],
                    ),
                    
                  ),
                  
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(40),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Collection",
                          style: TextStyle(
                              color: Color(0xFF373A42),
                              fontFamily: "Work-bold",
                              fontSize: ScreenUtil.getInstance().setSp(56)))),
                  
                  SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                  Card(
                    elevation: 4.0,
                    margin: const EdgeInsets.fromLTRB(1.0, 8.0, 1.0, 8.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      children: <Widget>[
                        Image.asset('assets/eventpic1.jpg'),
                        ListTile(
                         
                          title: Text("SIT DD",
                              style: TextStyle(fontFamily: "Work-bold",fontSize: 30,color: Color(0xFF373A42))),
                          
                              onTap: () {
                                Route route = MaterialPageRoute(
                                    builder: (context) => Detail());
                                Navigator.push(context, route);
                              },
                              
                          
                        ),
                        ListTile(
                         
                          title: Text("Friday AUG 24, 9 AM ",
                              style: TextStyle(fontFamily: "Work-bold",fontSize: 16,color: Color(0xFF80848B))),
                          
                              onTap: () {
                                Route route = MaterialPageRoute(
                                    builder: (context) => Detail());
                                Navigator.push(context, route);
                              },
                              
                          
                        ),
                        
                       
                      ],
                    ),
                    
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(40),
                  ),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Upcoming",
                          style: TextStyle(
                              color: Color(0xFF373A42),
                              fontFamily: "Work-bold",
                              fontSize: ScreenUtil.getInstance().setSp(56)))),
                  
                  SizedBox(height: ScreenUtil.getInstance().setHeight(40)),
                  Card(
                    elevation: 4.0,
                    margin: const EdgeInsets.fromLTRB(1.0, 8.0, 1.0, 8.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Column(
                      children: <Widget>[
                        Image.asset('assets/eventpic2.gif'),
                        ListTile(
                         
                          title: Text("Innovation for a green future",
                              style: TextStyle(fontFamily: "Work-bold",fontSize: 30,color: Color(0xFF373A42))),
                          
                              onTap: () {
                                Route route = MaterialPageRoute(
                                    builder: (context) => Detail());
                                Navigator.push(context, route);
                              },
                              
                          
                        ),
                        ListTile(
                         
                          title: Text("Mondat AUG 27, 10 AM ",
                              style: TextStyle(fontFamily: "Work-bold",fontSize: 16,color: Color(0xFF80848B))),
                          
                              onTap: () {
                                Route route = MaterialPageRoute(
                                    builder: (context) => Detail());
                                Navigator.push(context, route);
                              },
                              
                          
                        ),
                        
                       
                      ],
                    ),
                    
                  ),
                  SizedBox(
                    height: ScreenUtil.getInstance().setHeight(160),
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
