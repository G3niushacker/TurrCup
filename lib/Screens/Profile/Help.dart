import 'package:flutter/material.dart';
class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("Help"),
        backgroundColor: Colors.black,
      ),
      body: Center(child: Text("Help Screen"),),
    );
  }
}
