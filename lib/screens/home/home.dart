import 'package:flutter/material.dart';
import 'package:track_the_bus/services/auth.dart';

class Home extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        title: Text(
          'Track The Bus',
          style: TextStyle (
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation:0.0,
        actions: <Widget>[
          FlatButton.icon(
            onPressed: () async {
              await _auth.signOut();
            },
            icon: Icon(Icons.person),
            label: Text('logout'),
          ),
        ],
      ),
    );
  }
}