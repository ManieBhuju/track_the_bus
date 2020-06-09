import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class MapLoad extends StatefulWidget {
  MapLoad({Key key}) : super(key: key);

  @override
  _MapLoadState createState() => _MapLoadState();
}

class _MapLoadState extends State<MapLoad> {

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(title: Text('Track The Bus'),),
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(37.42796133580664, -122.085749655962),
          zoom: 14.4746,
        ),
      ),
    );
  }
}