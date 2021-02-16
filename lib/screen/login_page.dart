import 'package:flight_booking_app/common/colors.dart';
import 'package:flight_booking_app/common/string.dart';
import 'package:flight_booking_app/component/buttons.dart';
import 'package:flight_booking_app/component/flatbutton.dart';
import 'package:flight_booking_app/homeScreen/rowscrollable.dart';
import 'file:///D:/Aishu/flight_booking_app/lib/homeScreen/home.dart';
import 'package:flight_booking_app/service/login_auth.dart';
import 'package:flutter/material.dart';

class Login_page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Loginpage_Session();
  }
}

class Loginpage_Session extends State<Login_page> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool _obscureText = true;

  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  String email, password;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        body: Stack(
          children: <Widget>[
            // The containers in the background
            new Column(
              children: <Widget>[
                new Container(
                  height: MediaQuery.of(context).size.height * .65,
                  color: Colors.white,
                ),
                new Container(
                  height: MediaQuery.of(context).size.height * .35,
                  color: MyColors.backgroundblue,
                )
              ],
            ),
            // The card widget with top padding,
            // incase if you wanted bottom padding to work,
            // set the `alignment` of container to Alignment.bottomCenter
            Column(
              children: [
                new Container(
                    alignment: Alignment.topCenter,
                    padding: new EdgeInsets.only(
                        top: MediaQuery.of(context).size.height /5,
                        right: 20.0,
                        left: 20.0),
                    child: new Container(
                      height: 600.0,
                      width: MediaQuery.of(context).size.width,
                      child: new Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: new Form(
                          key: _key,
                          autovalidate: _validate,
                          child: ListView(
                            padding: const EdgeInsets.all(20),
                            children: [
                              Text(MyString.Login,
                                  style: TextStyle(fontSize: 40)),
                              SizedBox(
                                height: 30.0,
                              ),

                              TextFormField(
                                controller: emailController,
                                decoration: InputDecoration(
                                  labelText: MyString.Email,
                                  suffixIcon: const Icon(Icons.done),
                                ),
                                validator: validateEmail,
                              ),
                              SizedBox(
                                height: 20.0,
                              ),
                              TextFormField(
                                controller: passwordController,
                                decoration: InputDecoration(
                                  labelText: MyString.Password,
                                  suffixIcon: new GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _obscureText = !_obscureText;
                                      });
                                    },
                                    child: new Icon(_obscureText
                                        ? Icons.visibility_off
                                        : Icons.visibility),
                                  ),
                                ),
                                validator: validatePassword,
                              ),
                              SizedBox(
                                height: 30.0,
                              ),
                              Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FlatButton(
                                      onPressed: () {},
                                      child: Text(
                                        'Forgot Password?',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                  ]),
                              SizedBox(
                                height: 30.0,
                              ),
                              Button(
                                  onPressed: () {
                                    _sendToServer();
                                    Navigator.push(context, MaterialPageRoute(builder: (context) => Homepage()));
                                  },
                                  title: MyString.Login),
                              SizedBox(
                                height: 30.0,
                              ),
                              Row(
                                children: [
                                  Text(MyString.Log_In_With),
                                  SizedBox(
                                    width: 30.0,
                                  ),

                                  // RawMaterialButton(
                                  //   onPressed: () {},
                                  //  // elevation: 2.0,
                                  //  // fillColor: Colors.white,
                                  //   child:  Image.asset('assets/images/facebook.png'),
                                  //  // padding: EdgeInsets.all(15.0),
                                  //   shape: CircleBorder(),
                                  // ),
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                        MyString.Image_fb),
                                    // child: InkWell(
                                    //   onTap: () {},
                                    // ),
                                  ),
                                  SizedBox(
                                    width: 30.0,
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        signInWithGoogle().whenComplete(
                                          () {
                                            Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) {
                                                return Homepage();
                                              }),
                                            );
                                          },
                                        );
                                      },
                                      child: CircleAvatar(
                                        radius: 30,
                                        backgroundImage: AssetImage( MyString.Img_google),
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: 50.0,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(MyString.New_user,
                                        textAlign: TextAlign.start),
                                    NewFlatButton(
                                        onPressed: () {},
                                        title: MyString.SignIn)
                                  ],
                                ),
                              ), // color: Colors.white,// elevation: 4.0,
                            ],
                          ),
                        ),
                      ),
                    )),
              ],
            ),
          ],
        ));
  }

  _sendToServer() {
    try {
      if (_key.currentState.validate()) {
        // No any error in validation
        //  _key.currentState.save();
        print("Email $email");
        print("Password $password");
      } else {
        // validation error
        setState(() {
          _validate = true;
        });
      }
    } catch (e) {
      throw (e);
    }
  }
}
