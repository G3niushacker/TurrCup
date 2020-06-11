import 'dart:io';
import 'package:doorstepf/Screens/Profile/PickImage.dart';
import 'package:doorstepf/Config/Destinations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_picker/image_picker.dart';
class EditProfile extends StatefulWidget {
  @override
  _EditProfileState createState() => _EditProfileState();
}
ProfileDestinations profileDestinations = ProfileDestinations();
class _EditProfileState extends State<EditProfile> {

  TextEditingController name = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController address = TextEditingController();

  Future insertUser() async {
    var url = await "http://192.168.56.1/Api/customerUsers.php";
    http.post(url,body: {
      "name":name,
      "phone":phone,
      "email":email,
      "address":address,
    });
  }

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: <Widget>[
              Wrap(
                children: <Widget>[
                  Container(
                    height: 200,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40),
                            bottomLeft: Radius.circular(40)
                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0,left: 20.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height / 2,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)
                      ),
                      child: Card(
                        elevation: 8,
                        child: Padding(
                          padding: const EdgeInsets.only(top:10,right: 12.0,left: 12.0),
                          child: ListView(
                            children: <Widget>[
                              TextField(
                                controller: name,
                                decoration: InputDecoration(
                                    hintText: "Name"
                                ),
                              ),
                              TextField(
                                controller: phone,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                    hintText: "Phone"
                                ),
                              ),
                              TextField(
                                controller: email,
                                decoration: InputDecoration(
                                    hintText: "Email"
                                ),
                              ),
                              TextField(
                                controller: address,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                    hintText: "Address"
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                 Padding(
                   padding: const EdgeInsets.only(right:20.0,left: 20.0,top: 10),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Expanded(
                         child: Container(
                           decoration: BoxDecoration(
                             border: Border.all(),
                             borderRadius: BorderRadius.circular(100)
                           ),
                           child: MaterialButton(
                             child: Icon(Icons.arrow_back,size: 40,),
                             onPressed: (){
                               Navigator.maybePop(context);
                             },
                           ),
                         ),
                       ),
                       SizedBox(
                         width: 10,
                       ),
                       Expanded(
                         child: MaterialButton(
                           shape: StadiumBorder(),
                           onPressed: (){
                             insertUser();
//                             Navigator.maybePop(context);
                           print(name);
                           print(email);
                           print(phone);
                           print(address);
                           },
                           height: 50,
                           color: Colors.black,
                           child: Text("Save",style: profileDestinations.whiteText,),
                         ),
                       )
                     ],
                   ),
                 ),
                ],
              ),
              Align(
                alignment: Alignment(0.0,-0.5),
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => PickImage()
                    ));
                  },
                  child: Container(
                    width: 100,
                    height: 100,
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
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
