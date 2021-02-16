import 'package:flight_booking_app/common/string.dart';
import 'package:flight_booking_app/homeScreen/best_places.dart';
import 'package:flight_booking_app/homeScreen/bottomNavigation.dart';
import 'package:flight_booking_app/homeScreen/columnScrollable.dart';
import 'package:flight_booking_app/homeScreen/rowscrollable.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeScreen();
  }

}

class HomeScreen extends State<Homepage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: ListView(
             children:[
            ListTile(
             title: Text('Home',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
           ),
               RowScrollable(

               ),
               SizedBox(
                 height: 30,
               ),
               ListTile(
                 title: Text('Best Offers',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                 subtitle: Text('Recommended Destination'),
                 trailing: Text('View All', ),
               ),

               Best_Places(

               ),
               SizedBox(
                 height: 20,
               ),
               ListTile(
                 title: Text('Popular Places',style:TextStyle(fontWeight: FontWeight.normal,fontSize: 30),),
                trailing: Text('View All'),
                //subtitle: Text('Recommended Destination'),
               ),
               Popular_Places(

               )



      ]
      ),
      bottomNavigationBar:Bottom_Navigation(),


    );
  }


}