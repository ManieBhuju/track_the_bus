import 'package:flutter/material.dart';
import 'home.dart';

// class Profile extends StatefulWidget {
//   @override
//   _ProfileState createState() => _ProfileState();
// }

// class _ProfileState extends State<Profile> {
//   final Color color;

//   PlaceholderWidget(this.color);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: color,
//     );
//   }
// }

class Profile extends StatelessWidget {
  final Color color;

  PlaceholderWidget(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
    );
  }
}
