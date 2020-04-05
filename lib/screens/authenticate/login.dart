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
  String error = '';

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Form(
        key: _formKey,
        child: Padding(
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
                      SizedBox(height:20.0),
                      Text(
                        error,
                        style: TextStyle(color: Colors.red, fontSize: 14.0),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildEmailTF(String hintText){
    return TextFormField(
      validator: (val) => val.isEmpty ? 'Enter an Email' : null,
      onChanged: (val){
        setState(() => _email= val);
      },
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
      validator: (val) => val.length < 6 ? 'Enter character more than 6' : null,
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
          if (_formKey.currentState.validate()) {
            print ('valid');
            dynamic result = await _auth.signInWithEmailAndPassword(_email, _password);
            if (result == null) {
              setState(() => error = 'Please supply valid email and password!');
            }
          }
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