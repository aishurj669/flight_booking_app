import 'package:carousel_slider/carousel_slider.dart';
import 'package:flight_booking_app/common/string.dart';
import 'package:flight_booking_app/screen/create_user_page.dart';
import 'file:///C:/Users/user1/AndroidStudioProjects/flight_booking_app/lib/component/buttons.dart';
import 'package:flutter/material.dart';

class SignUp_Page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return SignUp_Session();
  }

}

class SignUp_Session extends State<SignUp_Page> {
  CarouselSlider carouselSlider;
  int _current = 0;
  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    try {
      for (var i = 0; i < list.length; i++) {              // for loop., for images
        result.add(handler(i, list[i]));
      }
    }
    catch(e){
      throw(e);
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {

    double height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    try {
      if (width > 600) {
        return SliderView(height=150);
      } else {
        return SliderView(height=500);
      }
    } catch (e) {}
  }
  Widget SliderView(height) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            carouselSlider = CarouselSlider(                      // Using carousel property
              height: MediaQuery.of(context).size.height/2,
              initialPage: 0,
              enlargeCenterPage: true,
              reverse: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index) {
                setState(() {
                  _current = index;
                });
              },
              items: MyString.image.map((imgUrl) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width/2,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(

                      ),
                      child: Image.asset(
                        imgUrl,
                        width: MediaQuery.of(context).size.width/2,
                        height: MediaQuery.of(context).size.height*0.55,
                        fit: BoxFit.fill,
                      ),
                    );
                  },
                );
              }).toList(),
            ),
            SizedBox(                                                  // space for images and dots
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: map<Widget>(MyString.image, (index, url) {
                return Container(
                  width: 10.0,
                  height: 10.0,
                  margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                  decoration: BoxDecoration(                                      //BoxDecoration for dots
                    shape: BoxShape.circle,
                    color: _current == index ? Colors.redAccent : Colors.green,
                  ),
                );
              }),
            ),
            SizedBox(
              height: 20.0,                             // space for dots and button
            ),
          Button(onPressed: () {
          }, title: MyString.StartBooking)
          ],
        ),
      ),
    );
  }

}