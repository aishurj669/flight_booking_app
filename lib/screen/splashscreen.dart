import 'dart:async';


import 'package:flight_booking_app/common/colors.dart';
import 'package:flight_booking_app/common/string.dart';
import 'package:flight_booking_app/screen/signUp_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Splash_Screen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Splash_State();
  }
}

class Splash_State extends State<Splash_Screen> {
  // To set a navigation and duration
  String versionName = 'V1.0';
  final splashDelay = 5;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 10),   // setting the duration for splash
            () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => SignUp_Page())));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: MyColors.backgroundblue,                     // Here used colors file for colors
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/splashlogo.png',// I added asset image
                  height: 100,
                  width: 100,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Text(MyString.navana,            // here used string file for text
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: MyColors.textwhite
                          )
                      ),
                      SizedBox(width: 12),
                      Text(MyString.air,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: MyColors.buttonpink
                          )
                      ),
                    ]
                )
              ]
          ),
        )
    );
  }
}
