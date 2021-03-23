import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:track_the_bus/models/user.dart';
import 'package:track_the_bus/screens/authenticate/authenticate.dart';
import 'package:track_the_bus/screens/home/home.dart';
// import 'package:track_the_bus/screens/home/mapload.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<User>(context);

    //returns either home or auth
    if (user == null) {
      return Authenticate();
    } else {
      return Home();
    }
  }
}
