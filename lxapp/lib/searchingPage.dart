import 'package:flutter/material.dart';
class SearchingPage extends StatefulWidget {
  @override
  _SearchingPageState createState() => _SearchingPageState();
}

class _SearchingPageState extends State<SearchingPage> {
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
       
        body: Center(
          child: Text('searching page'),
        ),
      ),
    );
  }
}