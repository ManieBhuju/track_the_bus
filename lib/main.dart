import 'package:flutter/material.dart';
import 'package:track_the_bus/screens/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:track_the_bus/services/auth.dart';
import 'package:track_the_bus/models/user.dart';

void main() => runApp(TrackTheBus());

class TrackTheBus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
        value: AuthService().user,
          child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Wrapper(),
        ),
    );
  }
}

