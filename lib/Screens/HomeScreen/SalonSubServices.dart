import 'package:doorstepf/Services/HomeScreenServices.dart';
import 'package:doorstepf/Models/HomeScreenModels/SalonSubServices.dart';
import 'package:flutter/material.dart';
class SalonSubServices extends StatefulWidget {
  @override
  _SalonSubServicesState createState() => _SalonSubServicesState();
}
HomeScreenServices homeScreenServices = HomeScreenServices();


class _SalonSubServicesState extends State<SalonSubServices> {

  List<SalonSubServicesModel> salonSubServices;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
   homeScreenServices.getSalonSubService().then((salonsubservices) {
     salonSubServices = salonsubservices;
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Salon"),
        backgroundColor: Colors.black,
      ),
      body: GridView.builder(
          shrinkWrap: true,
          itemCount: salonSubServices.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 3,),
          itemBuilder: (context, index){
            SalonSubServicesModel salonsubservices = salonSubServices[index];
            return Card(
              child: Column(
                children: <Widget>[
                  Container(child: Image.network(salonsubservices.image, fit: BoxFit.cover,), height: 110),
                  Text(salonsubservices.title)
                ],
              ),
            );
          }),
    );
  }
}
