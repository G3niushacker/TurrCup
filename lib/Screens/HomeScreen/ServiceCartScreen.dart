import 'package:doorstepf/Config/Destinations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class ServiceCartScreen extends StatefulWidget {
  @override
  _ServiceCartScreenState createState() => _ServiceCartScreenState();
}
HomeScreenDestinations homeScreenDestinations = HomeScreenDestinations();
class _ServiceCartScreenState extends State<ServiceCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top:20.0,right: 20.0,left: 10.0),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: (){
                    Navigator.maybePop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios,size: 30,),
                ),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.delete,size: 30,),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("My",style: homeScreenDestinations.carttexthead),
                    Text("Order",style: homeScreenDestinations.carttextsbhead,),
                  ],
                ),
              ),
            ),
           Align(
             alignment: Alignment(5,-1),
             child:  Padding(
               padding: const EdgeInsets.all(10.0),
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.end,
                 children: <Widget>[
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: <Widget>[
                       Text("Total:",style: homeScreenDestinations.carttextsbhead,),
                       Text("Rs 120",style: homeScreenDestinations.carttexthead,)
                     ],
                   ),
                   Divider(),
                   SizedBox(
                     height: 10,
                   ),
                   MaterialButton(
                     onPressed: (){},
                     color: Colors.black,
                     height: 50,
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: <Widget>[
                         Text("Rs21.0",style: homeScreenDestinations.whiteTextColor,),
                         Text("NEXT",style: homeScreenDestinations.whiteTextColor,)
                       ],
                     ),
                   ),
                 ],
               ),
             ),
           )
          ],
        ),
      ),
    );
  }
}
