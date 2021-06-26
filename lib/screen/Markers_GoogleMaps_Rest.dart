import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Markers_Google extends StatefulWidget{

  _Markers_GoogleState createState()=> _Markers_GoogleState();
}

class _Markers_GoogleState extends State<Markers_Google> {

  GoogleMapController myMapController;
  final Set<Marker> _markers = new Set();
  static const LatLng _mainLocation = const LatLng(-16.449960,-71.534698);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
          child:Column(
            children: <Widget>[
              Container(
                  height: 700,
                  width: 400,
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
                            setState(() {
                              myMapController = controller;
                            });
                          },
                        ),
                      ),
                    ],
                  )
              ),
            ],
          ),
        )
    );
  }

  Set<Marker> myMarker() {
    setState(() {
      _markers.add(Marker(
        // This marker id can be anything that uniquely identifies each marker.
        markerId: MarkerId(_mainLocation.toString()),
        position: _mainLocation,
        infoWindow: InfoWindow(
          title: 'Restaurante de Prueba',
          snippet: 'Lo mejor que encontraras',
        ),
        icon: BitmapDescriptor.defaultMarker,
      ));
    });

    return _markers;
  }
}