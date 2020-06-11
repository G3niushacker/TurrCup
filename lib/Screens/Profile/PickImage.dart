import 'dart:io';

import 'package:doorstepf/Screens/Profile/EditProfile.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class PickImage extends StatefulWidget {
  @override
  _PickImageState createState() => _PickImageState();
}

class _PickImageState extends State<PickImage> {

  bool isPicked = false;
  Future<File> file;

  pickImage(){
    setState(() {
      var file = ImagePicker.pickImage(source: ImageSource.gallery);
    });
  }
  Widget picked(){
    return FutureBuilder(
      future: file,
      builder: (context,snapshot){
        if(snapshot.connectionState == ConnectionState.done){
          return Flexible(
              child: Image.file(
                snapshot.data,
                fit: BoxFit.fill,
              )
          );
        }else if(null != snapshot.error){
          return Text("Error Picking Image");
        }
        else{
         return IconButton(
           onPressed: (){
             pickImage();
           },
           icon: Icon(Icons.camera_alt,size: 100,),
         );
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Pick Image"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            picked(),
            OutlineButton(
              onPressed: (){
                setState(() {
                  Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) => EditProfile()
                  ));
                });
              },
              child: Text("Continue"),
            )
          ],
        ),
      ),
    );
  }
}
