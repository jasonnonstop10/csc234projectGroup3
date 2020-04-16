import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/rendering.dart';


Widget horizontalLine() => Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Container(
        width: ScreenUtil.getInstance().setWidth(120),
        height: 1.0,
        color: Colors.black26.withOpacity(.2),
      ),
    );

class GridPage extends StatefulWidget {
  @override
  _GridPageState createState() => _GridPageState();
}


class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return null;
  }
  
}
