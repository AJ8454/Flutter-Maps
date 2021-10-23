import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  StreamSubscription? _locationSubscription;
  Location _loactionTracker = Location();
  Marker? marker;
  Circle? circle;
  GoogleMapController? _controller;

// initial position of map to load first i.e. I have given India.
  static const CameraPosition initialLocation = CameraPosition(
    target: LatLng(20.5937, 78.9629),
    zoom: 14.4746,
  );

  void getCurrentLocation() async {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Map'),
      ),
      body: GoogleMap(
        mapType: MapType.hybrid,
        initialCameraPosition: initialLocation,
        markers: Set.of((marker != null) ? [marker!] : []),
        circles: Set.of((circle != null) ? [circle!] : []),
        onMapCreated: (GoogleMapController controller) {
          _controller = controller;
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => getCurrentLocation(),
        child: const Icon(Icons.location_searching),
      ),
    );
  }
}
