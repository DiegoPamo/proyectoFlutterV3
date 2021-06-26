import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:hola/screen/tabNavigattion.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class DetailScreen  extends StatelessWidget {

  final String todo,vista, latitude, longitude;

  DetailScreen({Key key, @required this.todo,@required this.vista, @required this.latitude,@required this.longitude}) : super(key: key);

  GoogleMapController myMapController;
  final Set<Marker> _markers = new Set();

  static const LatLng _mainLocation = const LatLng(-16.449960,-71.534698);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${todo}"),
        backgroundColor: Colors.orange,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Text(
              "${todo}",
              style: TextStyle(height: 2, fontSize: 30),
            ),
            Image.network("${vista}"),
            Container(
                height: 500,
                width: 400,
                margin: EdgeInsets.only(top: 30),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Expanded(
                      child: GoogleMap(
                        initialCameraPosition: CameraPosition(
                          target: _mainLocation,
                          zoom: 10.0,
                        ),
                        markers: this.myMarker(),
                        mapType: MapType.normal,
                        onMapCreated: (controller) {
                            myMapController = controller;
                        },
                      ),
                    ),
                  ],
                )
            ),
          ],
        ),
      ),
    );
  }

  Set<Marker> myMarker() {
      _markers.add(Marker(
        // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId(_mainLocation.toString()),
        position: _mainLocation,
        infoWindow: InfoWindow(
          title: "${todo}",
          snippet: 'Lo mejor que encontraras',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));


    return _markers;
  }

}