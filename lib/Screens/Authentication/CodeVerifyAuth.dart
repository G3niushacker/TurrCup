import 'package:doorstepf/Config/Destinations.dart';
import 'package:flutter/material.dart';
class CodeVerifyAuth extends StatefulWidget {
  @override
  _CodeVerifyAuthState createState() => _CodeVerifyAuthState();
}
AuthenticationDestination destination = AuthenticationDestination();
class _CodeVerifyAuthState extends State<CodeVerifyAuth> {
  String codeTime = "3:50";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Veify OTP"),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.black,
                height: MediaQuery.of(context).size.height / 5,
              ),
              Align(
                alignment: Alignment(0.1,5.0),
                child: Image.asset("images/phoneAuth.png",height: 100,width: 100,),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 6,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Enter the 4 digit code you recieved \n now in your phone to continue."),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(),
              ),
              Text("Code expire in ${codeTime}"),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: MaterialButton(
                  minWidth: MediaQuery.of(context).size.width,
                  shape: StadiumBorder(),
                  color: Colors.black,
                  onPressed: (){},
                  child: Text("Verify",style: destination.btnStyle,),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Didn't get the code?"),
                  FlatButton(
                    onPressed: (){},
                    child: Text("Resend"),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
