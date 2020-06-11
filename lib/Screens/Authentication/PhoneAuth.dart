import 'package:doorstepf/Screens/Authentication/CodeVerifyAuth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_country_picker/flutter_country_picker.dart';
import 'package:doorstepf/Config/Destinations.dart';
import 'package:firebase_auth/firebase_auth.dart';
class PhoneAuth extends StatefulWidget {
  @override
  _PhoneAuthState createState() => _PhoneAuthState();
}
AuthenticationDestination destination = AuthenticationDestination();
class _PhoneAuthState extends State<PhoneAuth> {
  Country country;
  String phone;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 1.5,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset("images/tc.jpg",height: 70,width: 70,),
                  Text("TurrCup",style: destination.upertext)
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text("Enter Your Phone",style: destination.toplebelStyle,),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:20.0,left: 20.0),
                    child: Row(
                      children: <Widget>[
                        CountryPicker(
                          dense: false,
                          showFlag: false,  //displays flag, true by default
                          showDialingCode: true, //displays dialing code, false by default
                          showName: false, //displays country name, true by default
                          showCurrency: false, //eg. 'British pound'
                          showCurrencyISO: false, //eg. 'GBP'
                          onChanged: (Country _country) {
                            setState(() {
                              country = _country;
                            });
                          },
                          selectedCountry: country,
                        ),
                        Expanded(
                          child: TextField(
                            onChanged: (value){
                              phone = value;
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right:20.0,left: 20.0),
                    child: MaterialButton(
                      onPressed: (){
                        print(phone);
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) => CodeVerifyAuth()
                        ));
                      },
                      child: Text("Next",style: destination.btnStyle,),
                      color: Colors.black,
                      shape: StadiumBorder(),
                      minWidth: MediaQuery.of(context).size.width,
                    ),
                  )
                ],
              ),
          )
        ],
      ),
    );
  }
}
