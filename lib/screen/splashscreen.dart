import 'dart:async';


import 'package:flight_booking_app/common/colors.dart';
import 'package:flight_booking_app/screen/start_page.dart';
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
  String versionName = 'V1.0';
  final splashDelay = 5;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
        Duration(seconds: 10),
            () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => Start_Page())));
  }

  loadWidget() async {
    var duration = Duration(seconds: splashDelay);
    return Timer(duration, navigationPage);
  }

  void navigationPage() {
    //Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Json()));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: MyColors.blue,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  'assets/images/splashlogo.png',
                  height: 100,
                  width: 100,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Text('navana ',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: Colors.white)),
                      Text('air',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              color: MyColors.pink)),
                    ]
                )

              ]),
        ));
  }
}
