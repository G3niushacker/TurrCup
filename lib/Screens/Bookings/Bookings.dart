import 'package:flutter/material.dart';
import 'package:doorstepf/Screens/Bookings/Current.dart';
import 'package:doorstepf/Screens/Bookings/Previous.dart';

class Bookings extends StatefulWidget {
  @override
  _BookingsState createState() => _BookingsState();
}

class _BookingsState extends State<Bookings> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text("My Bookings"),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                child: Text("Current"),
              ),
              Tab(
                child: Text("Previus"),
              )
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Current(),
            Previous()
          ],
        ),
      ),
    );
  }
}