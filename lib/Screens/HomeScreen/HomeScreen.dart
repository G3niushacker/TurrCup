import 'package:doorstepf/Config/Destinations.dart';
import 'package:doorstepf/Models/HomeScreenModels/SubServicesList.dart';
import 'package:doorstepf/Screens/HomeScreen/MapLocation.dart';
import 'package:doorstepf/Screens/HomeScreen/ServiceCartScreen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:doorstepf/Models/HomeScreenModels/TopCardView.dart';
import 'package:doorstepf/Models/HomeScreenModels/ServiceCatgories.dart';
import 'package:doorstepf/Services/HomeScreenServices.dart';
import 'package:geolocator/geolocator.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
HomeScreenDestinations destinations = HomeScreenDestinations();
HomeScreenServices homeScreenServices = HomeScreenServices();
class _HomeScreenState extends State<HomeScreen> {

  List<TopCardView> topCardView;
  List<ServiceCatgories> serviceCatgories;
  List<SubServicesList> subServiceList;
  String locationLatLong = "";

  getCurrentLocation() async {
    final position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print(position);
    setState(() {
      locationLatLong = "${position.latitude},${position.longitude}";
    });
  }

  @override
  void initState() {
    super.initState();
    getCurrentLocation();
    homeScreenServices.getTopCardView().then((topcardview) {
     setState(() {
       topCardView = topcardview;
     });
    });
    homeScreenServices.getServiceCatgories().then((servicecatgories) {
      setState(() {
        serviceCatgories = servicecatgories;
      });
    });
    homeScreenServices.getSubServiceList().then((subservicelist) {
      subServiceList = subservicelist;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: <Widget>[
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: <Widget>[
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => MapLocation(locationLatLong : locationLatLong)
                        ));
                        getCurrentLocation();
                      },
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.location_on),
                          SizedBox(width: 20,),
                          Text(locationLatLong)
                        ],
                      ),
                    ),
                    Divider(
                      thickness: 1,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.search),
                        SizedBox(width: 20,),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search a Service"
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20)
                )
              ),
              child: Column(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Container(
                        height: 180,
                        width: MediaQuery.of(context).size.width / 1,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount:topCardView.length,
                            itemBuilder: (context,index){
                              TopCardView topcardview = topCardView[index];
                              return Container(
                                height: 50,
                                width: MediaQuery.of(context).size.width / 3,
                                child: InkWell(
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(
                                        builder: (context) => ServiceCartScreen()
                                    ));
                                  },
                                  child: Card(
                                    elevation: 3.0,
                                    child: Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Expanded(
                                            child: Container(
                                              height: MediaQuery.of(context).size.height,
                                              child: Image.network(
                                                topcardview.image,
                                                fit: BoxFit.fill,
                                              ),
                                            ),
                                          ),
                                          Text(topcardview.title,style: homeScreenDestinations.topcardtitle,),
                                          SizedBox(height: 5.0,),
                                          Text(topcardview.subtitle),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }),
                      ),
                    ],
                  ),
                  GridView.builder(
                      shrinkWrap: true,
                      itemCount: serviceCatgories.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount( crossAxisCount: 3,),
                      itemBuilder: (context, index){
                        ServiceCatgories servicecatgories = serviceCatgories[index];
                        return Padding(
                          padding: const EdgeInsets.only(top:8.0,right: 8.0),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: InkWell(
                              onTap: (){
                                if(index == 0){
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => ServiceCartScreen()
                                  ));
                                }else{
                                  Navigator.push(context, MaterialPageRoute(
                                      builder: (context) => ServiceCartScreen()
                                  ));
                                }
                              },
                              child: Column(
                                children: <Widget>[
                                  Container(
                                      child: Container(
                                        height:30,
                                        width: 60,
                                        child: Image.network(
                                          servicecatgories.image, ),
                                      ), height: 100),
                                  Text(servicecatgories.title)
                                ],
                              ),
                            ),
                          ),
                        );
                      }),
                  ListView.builder(
                      shrinkWrap: true,
                      itemCount: subServiceList.length,
                      itemBuilder: (context, index){
                        SubServicesList subservicelist = subServiceList[index];
                        return Card(
                            child: Column(
                              children: <Widget>[
                                ListTile(
                                  leading: Container(
                                    child: Image.network(
                                      subservicelist.image,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  title: Text(subservicelist.title),
                                  subtitle: Text(subservicelist.subtitle),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget>[
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star),
                                    Icon(Icons.star)
                                  ],
                                )
                              ],
                            )
                        );
                      })
                ],
              ),
            )
          ],
        ),
    );
  }
}
