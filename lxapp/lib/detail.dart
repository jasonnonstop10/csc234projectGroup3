import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_login_page_ui/schesdulePage.dart';
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
    return WillPopScope(
        onWillPop: () {
      moveToLastScreen();
    },
      child:Scaffold(
      appBar: AppBar(
      title: new Text(
      "",
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
      color:  const Color(0xFFFFFFFF)),
      onPressed: (){
      moveToLastScreen();
      },
      ),
      ),
        backgroundColor: Colors.transparent,
        resizeToAvoidBottomPadding: false,
        body: SingleChildScrollView(
          child: Container(

            decoration: new BoxDecoration(image: new DecorationImage(image: new AssetImage("assets/eventpic.jpg"), fit: BoxFit.cover)),
          child: Padding(
            padding: EdgeInsets.only(left: 0.0, right: 0.0, top: 120.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[],
                ),
                SizedBox(
                  height: ScreenUtil.getInstance().setHeight(180),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 300.0),
               
                  child: Text("SIT DD",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: ScreenUtil.getInstance().setSp(45),
                          fontFamily: "work-Bold",
                          letterSpacing: .6)),
                
                ),
                SizedBox(
                  height: ScreenUtil.getInstance().setHeight(10),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 240.0),
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
                Padding(
                  padding: const EdgeInsets.only(left:0.0, right: 270.0),
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
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 323.0),
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
                        
                        title: Text("",
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
                        
                        title: Text("July 24, 2019 Customers that are searching for a particular topic. What’s great about them is that you only have…",
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
                      Padding(
                        padding: const EdgeInsets.only(left: 13.0, right: 13.0),
                      child: Image.asset('assets/maps.jpg'),
                      ),
                      ListTile(
                        
                        title: Text("F1, LX Building",
                            style: TextStyle(fontFamily: "Work-bold",color: Color(0xFF80848B))),
                       
                      
                        onTap: () {},
                      ),
                      Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                        child: InkWell(
                      child: Container(
                        width: max(0, 390),
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
                            onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SchesdulePage()));
                        },
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
                  height: ScreenUtil.getInstance().setHeight(40),
                ),
                    ],
                  ),
                ),
                ),
                
              ],
            ),
          ),
          ),
        )));
  }
  void moveToLastScreen() {
    Navigator.pop(context);
  }
}
