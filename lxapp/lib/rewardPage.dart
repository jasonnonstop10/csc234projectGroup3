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
                GridView.count(
                  shrinkWrap: true,
                  primary: false,
                  padding: const EdgeInsets.all(20),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                  children: <Widget>[
                    Card(
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          print('Card tapped.');
                        },
                        child: new Container(
                          padding: new EdgeInsets.all(32.0),
                          child: new Column(
                            children: <Widget>[
                              new Image.network("https://pixabay.com/images/id-1238246/"),
                              new Text('Free burger'),
                              new Text('buy 1 free 1 when you buy burger in 10 point')
                            ],
                          ),
                        ),
                      ),
                    ),
                    Card(
                      child: Flexible(
                    child:InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          print('Card tapped.');
                        },
                        child: new Container(
                          padding: new EdgeInsets.all(32.0),
                          child: new Column(
                            children: <Widget>[
                              new Image.network("https://pixabay.com/images/id-1238246/"),
                              new Text('Free burger'),
                              new Text('buy 1 free 1 when you buy burger in 10 point')
                            ],
                          ),
                        ),
                      ),)
                    ),
                     Card(
                      child: InkWell(
                        splashColor: Colors.blue.withAlpha(30),
                        onTap: () {
                          print('Card tapped.');
                        },
                        child: new Container(
                          padding: new EdgeInsets.all(32.0),
                          child: new Column(
                            children: <Widget>[
                              new Image.network("https://pixabay.com/images/id-1238246/"),
                              new Text('Free burger'),
                              new Text('buy 1 free 1 when you buy burger in 10 point')
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ])))
    ]));
  }
}
