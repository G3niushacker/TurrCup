import 'package:doorstepf/Screens/Authentication/PhoneAuth.dart';
import 'package:doorstepf/Screens/HomeScreen/SalonSubServices.dart';
import 'package:doorstepf/Screens/Profile/EditProfile.dart';
import 'package:doorstepf/Screens/Profile/AboutUs.dart';
import 'package:doorstepf/Screens/Profile/Help.dart';
import 'package:doorstepf/Screens/Profile/FeedBack.dart';
import 'package:flutter/material.dart';
import 'package:doorstepf/Models/ProfileModel.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}


class _ProfileState extends State<Profile> {



  Future<List<User>> userData() async {
    var response = await http.get("https://jsonplaceholder.ir/users");
    var jsonUser = jsonDecode(response.body);
    return jsonUser;
  }
  String name = "Ameer Hamza";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(top: 20,left: 10,right: 10),
              child: ListView(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: NetworkImage(
                                      "https://i.imgur.com/BoN9kdC.png"
                                  )
                              )
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Ameer Hamza",style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold
                            )),
                          ],
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        IconButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context) => EditProfile()
                            ));
                          },
                          icon: Icon(Icons.mode_edit),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.call),
                        SizedBox(
                          width: 10,
                        ),
                        Text("03057359640",style: TextStyle(
                            fontSize: 15.0
                        ),)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:20.0),
                    child: Row(
                      children: <Widget>[
                        Icon(Icons.home),
                        SizedBox(
                          width: 10,
                        ),
                        Text("COP 72,Streat 10 phase-II,DHA",style: TextStyle(
                            fontSize: 15.0
                        ),)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Divider(thickness: 2.0,),
                  ListTile(
                    leading: Icon(Icons.battery_alert),
                    title: Text("Join Us",style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400
                    ),),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => PhoneAuth()
                      ));
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.feedback),
                    title: Text("FeedBack",style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400
                    ),),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => FeedBack()
                      ));
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.help),
                    title: Text("Help",style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400
                    ),),
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => Help()
                      ));
                    },
                  ),
                  Divider(),
                  ListTile(
                    leading: Icon(Icons.info),
                    title: Text("About Us!",style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w400
                    ),),
                    onTap: (){Navigator.push(context, MaterialPageRoute(
                        builder: (context) => AboutUs()
                    ));},
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            color: Color(0xffE2E7E7)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                          child: Text("1.0.20"),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ]
      ),
    );
  }
}



