import 'package:flight_booking_app/common/colors.dart';
import 'package:flight_booking_app/common/string.dart';
import 'package:flutter/material.dart';

class Bottom_Navigation extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Bottom_Navigation_Session();
  }

}

class Bottom_Navigation_Session extends State<Bottom_Navigation>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      fixedColor: MyColors.buttonpink,
        currentIndex: 0,
        // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Home'),
             backgroundColor: MyColors.textgery
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.timer),
            title: new Text('Navigation'),
              backgroundColor: MyColors.textgery
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              title: Text('Search'),
              backgroundColor: MyColors.textgery
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('Profile'),

              backgroundColor: MyColors.textgery
          ),

        ],

    );
  }

}