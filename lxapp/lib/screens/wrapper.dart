import 'package:flutter/material.dart';
import 'package:lxapp/screens/authenticate/authenticate.dart';
import 'package:lxapp/screens/home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    // return either the Home or Authenticate widget
    return Authenticate();
    
  }
}