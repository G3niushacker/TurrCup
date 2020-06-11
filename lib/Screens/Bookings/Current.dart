import 'package:doorstepf/Config/Destinations.dart';
import 'package:flutter/material.dart';
class Current extends StatefulWidget {
  @override
  _CurrentState createState() => _CurrentState();
}
BookingsDestinations bookingsDestinations = BookingsDestinations();
class _CurrentState extends State<Current> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.hourglass_empty,size: 80,),
            SizedBox(
              height: 20,
            ),
            Text("No Current Booking",style: bookingsDestinations.blackText,)
          ],
        ),
      ),
    );
  }
}
