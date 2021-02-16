import 'package:flight_booking_app/common/string.dart';
import 'package:flutter/material.dart';

class RowScrollable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
        child: Container(
          child: Row(
              children: [
                SizedBox(
                  width: 20,
                ),

                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
//                            margin: EdgeInsets.only(left: 12),
                        height: 60,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.green,
                        ),
                        child: Icon(
                          Icons.airplanemode_active,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Flight",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),

                  alignment: Alignment.centerLeft,
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
//                            margin: EdgeInsets.only(left: 12),
                        height: 60,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.redAccent,
                        ),
                        child: Icon(
                          Icons.hotel,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Hotel",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),

                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
//                            margin: EdgeInsets.only(left: 12),
                        height: 60,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.purpleAccent,
                        ),
                        child: Icon(
                          Icons.directions_car_rounded,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Car",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
//                            margin: EdgeInsets.only(left: 12),
                        height: 60,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.lightBlue,
                        ),
                        child: Icon(
                          Icons.restaurant_menu,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Restaurant",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  alignment: Alignment.centerRight,
                ),
                SizedBox(
                  width: 30,
                ),

                Container(
                  child: Column(
                    children: <Widget>[
                      Container(
//                            margin: EdgeInsets.only(left: 12),
                        height: 60,
                        width: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.cyanAccent,
                        ),
                        child: Icon(
                          Icons.supervisor_account_sharp,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Guest",
                        style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.w500),
                      )
                    ],
                  ),
                  alignment: Alignment.centerRight,
                ),
          ]
          )
        ),
      ),
    );
    }

}