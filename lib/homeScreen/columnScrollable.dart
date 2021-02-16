import 'package:flutter/material.dart';

class Popular_Places extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Container(
        child:SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child:
            Column(
              children: [
                ClipRRect(
                  //<--clipping image
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(32),
                      bottom: Radius.circular(32)),
                  child: Image.asset(
                    //<-- main image
                    'assets/images/place4.jpg',
                    height: MediaQuery.of(context).size.height * 0.3,
                    fit: BoxFit.fill,
                  ),
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    ClipRRect(
                      //<--clipping image
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(32),
                          bottom: Radius.circular(32)),
                      child: Image.asset(
                        //<-- main image
                        'assets/images/place1.jpg',
                        height: MediaQuery.of(context).size.height * 0.3,
                        width: MediaQuery.of(context).size.width,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Column(
                  children: [
                    ClipRRect(
                      //<--clipping image
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(32),
                          bottom: Radius.circular(32)),
                      child: Image.asset(
                        //<-- main image
                        'assets/images/place3.jpg',
                        height: MediaQuery.of(context).size.height * 0.3,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      );
  }

}