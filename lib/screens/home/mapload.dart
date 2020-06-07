import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:location/location.dart';

class MapLoad extends StatefulWidget {
  @override
  _MapLoadState createState() => _MapLoadState();
}

class _MapLoadState extends State<MapLoad> {

  bool mapToggle = false;
  var currentLocation;
  GoogleMapController mapController;

  void initState() {
    super.initState();
    Geolocator().getCurrentPosition().then((currloc) {
      setState(() {
        currentLocation = currloc;
        mapToggle = true;
      });
    });
  }

  Completer<GoogleMapController> _controller = Completer();
  static final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height - 80.0,
              width: double.infinity,
              child: mapToggle ? 
              GoogleMap (
                mapType: MapType.hybrid,
                initialCameraPosition: _kGooglePlex,
                onMapCreated: (GoogleMapController controller) {
               _controller.complete(controller);
                },
                )
              :
              Center(
                child: Text('Loading.. Please wait..',
                  style: TextStyle(fontSize: 20.0),)
              ),
            ),
          ],
        )
      ],
    );
  }

  void onMapCreated(controller) {
    setState(() {
      mapController = controller;
    });
  }
}