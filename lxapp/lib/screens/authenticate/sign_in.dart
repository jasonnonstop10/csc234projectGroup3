import 'package:flutter/material.dart';
import 'package:lxapp/services/auth.dart';
import 'package:lxapp/shared/constants.dart';
import 'package:lxapp/shared/loading.dart';


class SignIn extends StatefulWidget {
  final Function toggleView;
  SignIn({ this.toggleView });
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool loading = false;
   // text field state
  String email = '';
  String password = '';
  String error = '';
   @override
  Widget build(BuildContext context) {
    return loading ? Loading() : Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
        title: const Text('LX Application' , style : TextStyle(
        color: Colors.black
        )),
        actions: <Widget>[
          FlatButton.icon(
            icon: Icon(Icons.person),
            label: Text('Register'),
            onPressed: () {
              widget.toggleView();
            }
          ),
        ],
      ),
      //หน้าจอหลัก
      
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 50.0),
        
        child: Form(
            
            key: _formKey,
            child: Column(
             
            children: <Widget>[
              SizedBox(height: 20.0),
              TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'Email',prefixIcon: Icon(Icons.email)),
                validator: (val) => val.isEmpty ? 'Enter an email' : null,
                onChanged: (val) {
                  setState(() => email = val);
                },
              ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: textInputDecoration.copyWith(hintText: 'Password',prefixIcon: Icon(Icons.lock)),
                validator: (val) => val.length < 8 ? 'Enter the password' : null,
                obscureText: true,
                onChanged: (val) {
                  setState(() => password = val);
                },
              ),
              SizedBox(height: 20.0),
              ButtonTheme(
              minWidth: 500.0,
              height: 50.0,
              child: RaisedButton(
                color: Colors.orange[400],
                child: Text(
                  'Sign In',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () async {
                  if(_formKey.currentState.validate()){
                    setState(() => loading = true);
                    dynamic result = await _auth.signInWithEmailAndPassword(email, password);
                    if(result == null) {
                      setState(() {
                        error = 'invalid credentials';
                        loading = false;
                      });
                     }
                  }
                }
              ),
              ),
              SizedBox(height: 12.0),
              Text(
                error,
                style: TextStyle(color: Colors.red, fontSize: 14.0),
              ),
            ],
          ),
          )
      ),
    );
  }
}