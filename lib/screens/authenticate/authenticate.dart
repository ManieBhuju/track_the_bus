import 'package:flutter/material.dart';
import 'package:track_the_bus/screens/authenticate/login.dart';

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: LoginPage(),
    );
  }
}