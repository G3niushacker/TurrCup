import 'dart:async';

import 'package:doorstepf/Config/BottomNavDestination.dart';
import 'package:doorstepf/Config/Destinations.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:doorstepf/Screens/HomeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';

class MapLocation extends StatefulWidget {
  String locationLatLong;
  MapLocation({this.locationLatLong});
  @override
  _MapLocationState createState() => _MapLocationState(locationLatLong);
}

MapLocationDestination mapLocationDestination = MapLocationDestination();
class _MapLocationState extends State<MapLocation> {

  String locationLatLong;
  _MapLocationState(this.locationLatLong);

  Completer<GoogleMapController> controller = Completer();
  static const LatLng center = LatLng(24.838854, 67.055015);
  final Set<Marker> _marker = {};
  List<Marker> allMarker = [];
  LatLng lastMapPosition = center;
  MapType mapType = MapType.normal;


  onMapCreated(GoogleMapController _controller){
    controller.complete(_controller);
  }

  onCameraMove(CameraPosition position){
    lastMapPosition = position.target;
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    allMarker.add(Marker(
      markerId: MarkerId('myMarker'),
      draggable: true,
      position: LatLng(24.838854, 67.055015)
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            onMapCreated: onMapCreated,
            initialCameraPosition: CameraPosition(
              target: center,
              zoom: 11.0
            ),
            mapType: mapType,
            markers: Set.from(allMarker),
            onCameraMove: onCameraMove,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: MaterialButton(
                onPressed: (){
                 Navigator.maybePop(context);
                },
                minWidth: MediaQuery.of(context).size.width,
                height: 50,
                color: Colors.black,
                child: Text("Select",style: mapLocationDestination.btnStyle,),
              ),
            ),
          )
        ],
      )
    );
  }
}
