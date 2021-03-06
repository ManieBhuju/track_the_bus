import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:track_the_bus/screens/wrapper.dart';
import 'package:provider/provider.dart';
import 'package:track_the_bus/services/auth.dart';
import 'package:track_the_bus/models/customuser.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(TrackTheBus());
}

class TrackTheBus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<CustomUser>.value(
      value: AuthService().user,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    );
  }
}
