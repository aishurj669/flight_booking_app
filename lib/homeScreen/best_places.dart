import 'package:flutter/material.dart';

class Best_Places extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
          child: Row(
            children: [
              Container(
                child: Column(
                  children: <Widget>[
                    ClipRRect(
                      //<--clipping image
                      borderRadius: BorderRadius.vertical(
                          top: Radius.circular(32),
                          bottom: Radius.circular(32)),
                      child: Image.asset(
                        //<-- main image
                        'assets/images/place6.png',
                        height: MediaQuery.of(context).size.height * 0.2,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text("Thailand",
                        textAlign: TextAlign.start,
                        style: TextStyle(fontSize: 20)),
                  ],
                ),
                alignment: Alignment.centerLeft,
              ),
              SizedBox(width: 10),
              Column(
                children: [
                  ClipRRect(
                    //<--clipping image
                    borderRadius: BorderRadius.vertical(
                        top: Radius.circular(32),
                        bottom: Radius.circular(32)),
                    child: Image.asset(
                      //<-- main image
                      'assets/images/place2.jpg',
                      height: MediaQuery.of(context).size.height * 0.2,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text("Paris",
                      textAlign: TextAlign.start,
                      style: TextStyle(fontSize: 20)),
                ],
              ),
              SizedBox(width: 10),
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
                      height: MediaQuery.of(context).size.height * 0.2,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Text(
                    "Singapore",
                    style: TextStyle(fontSize: 20),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
