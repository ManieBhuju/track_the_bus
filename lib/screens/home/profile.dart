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
  var _name = "Any Name";
  var _email = "newuser@gmail.com";
  var _phone = "Phone no here";
  var _address = "Your address here!";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("Profile"),
        title: Text(
          "Profile",
        ),
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
                      _name,
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.blue[900],
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: [
              Card(
                color: Colors.green[600],
                shape: StadiumBorder(
                  side: BorderSide( 
                    color: Colors.red[600],
                    width: 2.0,
                  ),
                ),
                margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
                elevation: 10.0,
                child: Container(
                  width: 500,
                  height: 100,
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(20.0, 0.0, 0.0, 0.0),
                      ),
                      Text(
                        "Email: ",
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.red[800],
                        ),
                      ),
                      Text(
                        _email,
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.red[800],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(30.0, 0.0, 0.0, 0.0),
                      ),
                      IconButton(
                        icon: Icon(Icons.edit),
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                child: Container(
                  width: 300,
                  height: 100,
                  child: Text(
                    "Phone no:",
                    style: TextStyle(
                      fontSize: 22.0,
                      color: Colors.red[800],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
