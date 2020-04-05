import 'package:flutter/material.dart';
import 'package:track_the_bus/services/auth.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{

  //text field state
  String _email = '';
  String _password = '';

  final AuthService _auth = AuthService();

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 80.0, 30.0, 0.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            //this is for heading
            Text(
              'Track The Bus!',
              style: TextStyle(
                color:Colors.grey,
                letterSpacing: 2.0,
                fontFamily: 'Lobster',
                fontWeight: FontWeight.bold,
                fontSize: 40.0,
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(30.0, 80.0, 30.0, 0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                  'Please Login!',
                  style: TextStyle(
                    color:Colors.grey,
                    letterSpacing: 2.0,
                    fontSize: 20.0,
                    ),
                  ),
                ],
              ),
            ),
            //Main Login Part
            Padding(
              padding: EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 0.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    buildEmailTF('Email'),
                    SizedBox(height:20.0),
                    buildPasswordTF('Password'),
                    SizedBox(height:20.0),
                    buildButtonContainer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildEmailTF(String hintText){
    return TextFormField(
      // onChanged: (val){
      //   setState(() => _email= val);
      // },
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: hintText,
        //hintText: hintText,
        prefixIcon: Icon(
          Icons.email,
          color: Colors.greenAccent,
        ),
      ),
        autofocus: true,
    );
  }
  
  Widget buildPasswordTF(String hintText){
    return TextFormField(
      onChanged: (val){
        setState(() => _password = val);
      },
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: hintText,
        //hintText: hintText,
        prefixIcon: Icon(
          Icons.lock,
          color: Colors.greenAccent,
        ),
      ),
        autofocus: true,
    );
  }

  Widget buildButtonContainer(){
    return Container(
      padding: EdgeInsets.symmetric(vertical :25.0),
      width: double.infinity,
      child: RaisedButton(
        elevation: 5.0,
        onPressed: () async {
          print(email);
          print(password);  
        },
        padding: EdgeInsets.all(15.0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0),
        ),
        color: Colors.grey[700],
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
  
}