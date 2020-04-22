import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
   return new Scaffold(
      backgroundColor: Colors.white,

      body:Stack(
        children:<Widget>[SingleChildScrollView(
        child: Column(
          
          children: <Widget>[
           Card(
              elevation: 4.0,
              margin: const EdgeInsets.fromLTRB(0, 40.0, 0, 0),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
              child: ListTile(
                title: Text("Jean Doe"),
                leading: CircleAvatar(
                   backgroundImage: AssetImage('assets/profile.jpg'),
                   
                ),
                  onTap: (){
                 },
              )
            ),

          const SizedBox(height: 10.0),
          Card(
            elevation: 4.0,
            margin: const EdgeInsets.fromLTRB(14.0, 8.0, 14.0, 8.0),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
            child: Column(
             children: <Widget>[
               ListTile(
                 leading: Icon(Icons.card_giftcard),
                 title:Text("Reward"),
                 trailing:Text("100 point"),
                 onTap: (){
                 },

               ),
               ListTile(
                 leading: Icon(Icons.history),
                 title:Text("History"),
                 trailing: Icon(Icons.keyboard_arrow_right),
                 onTap: (){
                 },
               ),
               ListTile(
                 leading: Icon(Icons.aspect_ratio),
                 title:Text("QR code"),
                 trailing: Icon(Icons.keyboard_arrow_right),
                 onTap: (){

                 },
               ),
               ListTile(
                 leading: Icon(Icons.lock_outline),
                 title:Text("Change Password"),
                 trailing: Icon(Icons.keyboard_arrow_right),
                 onTap: (){

                 },
               ),
               ListTile(
                 leading: Icon(Icons.settings),
                 title:Text("Setting"),
                 trailing: Icon(Icons.keyboard_arrow_right),
                 onTap: (){

                 },
               ),
               ListTile(
                 leading: Icon(Icons.lock_open),
                 title:Text("Logout"),
                 trailing: Icon(Icons.keyboard_arrow_right),
                 onTap: (){

                 },
               ),
             ],
            ),
          ),
          ],
        )
      )]
      )
      );
  }
}
