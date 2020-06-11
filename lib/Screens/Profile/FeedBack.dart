import 'package:flutter/material.dart';
class FeedBack extends StatefulWidget {
  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text("FeedBack"),
        backgroundColor: Colors.black,
      ),
      body: Center(child: Text("FeedBack Screen"),),
    );
  }
}
