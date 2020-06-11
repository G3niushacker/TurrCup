import 'package:flutter/material.dart';
class Previous extends StatefulWidget {
  @override
  _PreviousState createState() => _PreviousState();
}

class _PreviousState extends State<Previous> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index){
            return ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  "https://i.imgur.com/BoN9kdC.png"
                ),
              ),
              title: Text("Johan Nicky"),
              subtitle: Text("Today 12:00 PM"),
              trailing: Text("Salon"),
            );
          }),
    );
  }
}
