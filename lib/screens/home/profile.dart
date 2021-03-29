import 'package:flutter/material.dart';

// class Profile extends StatelessWidget {
//   // final Color color;

//   // Profile(this.color);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Text('Welcome to profile 2'),
//     );
//   }
// }

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Colors.grey[600],
      ),
      body: Column(
        children: [
          Container(
            child: Container(
              width: double.infinity,
              height: 200.0,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                          "https://www.trendrr.net/wp-content/uploads/2017/06/Deepika-Padukone-1.jpg"),
                      radius: 70.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Natasha",
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.blue[900],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Card(
                      
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
