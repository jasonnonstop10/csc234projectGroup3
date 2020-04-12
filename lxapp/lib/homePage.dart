import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
       
        body: Center(
          child: Text('home page'),
        ),
      ),
    );
  }
}