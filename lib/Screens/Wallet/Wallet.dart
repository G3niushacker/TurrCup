import 'package:doorstepf/Config/Destinations.dart';
import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  @override
  _WalletState createState() => _WalletState();
}
WalletConstrains walletConstrains = WalletConstrains();
class _WalletState extends State<Wallet> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text("My Wallet"),
          backgroundColor: Colors.black,
          elevation: 0.0,
        ),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.monetization_on,color: Colors.white,),
                    Text("Your Balnace",style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),),
                  ],
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("PKR 5630",style: TextStyle(
                    fontSize: 30,
                    color: Colors.white
                ),)
              ],
            ),
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(top:30.0,right: 8.0,left: 8.0),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      )
                  ),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Text("Payment Methods",style: walletConstrains.headingsTextStyle,),
                        ],
                      ),
                      Divider(),
                      Row(
                        children: <Widget>[
                          Icon(Icons.attach_money),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Cash"),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.credit_card),
                          SizedBox(
                            width: 10,
                          ),
                          Text("Cradit Card"),
                        ],
                      ),

                      Divider(thickness: 2.0,),
                      Row(
                        children: <Widget>[
                          Text("Mobile Money",style: walletConstrains.headingsTextStyle,)
                        ],
                      ),
                      Divider(),
                      Row(
                        children: <Widget>[
                          Icon(Icons.mobile_screen_share,),
                          SizedBox(
                            width: 10,
                          ),
                          Text("EasyPaisa"),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(Icons.mobile_screen_share),
                          SizedBox(
                            width: 10,
                          ),
                          Text("JazzCash"),
                          SizedBox(
                            height: 20,
                          )
                        ],
                      ),
                      Divider(thickness: 2,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Donate To DoorStep",)
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              width: 330,
                              height: 50,
                              child: MaterialButton(
                                onPressed: (){},
                                child: Text("Add Funds",style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20
                                ),),
                                color: Colors.black,
                              ),
                            )
                          ],
                        ),
                      ),
                      Divider(),
                      Row(
                        children: <Widget>[
                          Text("Help"),
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Text("Add Payment Method click the cradit card to add\n payment"),
                        ],
                      ),
                      Text("Add Payment Method click the cradit card to add\n payment"),
                      Text("Add Payment Method click the cradit card to add\n payment"),
                      Text("Add Payment Method click the cradit card to add\n payment")
                    ],
                  ),
                ),
              ),
            )
          ],
        )
    );
  }
}