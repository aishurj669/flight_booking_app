import 'package:flight_booking_app/common/colors.dart';
import 'package:flight_booking_app/common/string.dart';
import 'package:flight_booking_app/component/buttons.dart';
import 'package:flight_booking_app/component/flatbutton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CreateAccount_Session();
  }
}

class CreateAccount_Session extends State<CreateAccount> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  GlobalKey<FormState> _key = new GlobalKey();
  bool _validate = false;
  String name, email, password;

  // Initially password is obscure
  bool _obscureText = true;

  // void _submitCommand() {
  //   final form = formKey.currentState;
  //
  //   // Email & password matched our validation rules
  //   if (form.validate()) {
  //     form.save();
  //   }
  // }

  // void _loginCommand() {
  //   // This is just a demo, so no actual login here.
  //   final snackbar = SnackBar(
  //     content: Text('Email: $_email, password: $_password'),
  //   );
  //
  //   scaffoldKey.currentState.showSnackBar(snackbar);
  // }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      body: Container(
        //padding: const EdgeInsets.all(30),
        margin: const EdgeInsets.all(40),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: new Form(
          key: _key,
          autovalidate: _validate,
          child: ListView(
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(30),
                child: Text(
                  "Create \n an account",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
                ),
              ),
              TextFormField(
                // Setting text and validation
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Name",
                ),
                validator: validateName,
              ),
              SizedBox(
                height: 20.0,
              ),
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: "Email",
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
                  labelText: "Password",
                  suffixIcon: new GestureDetector(
                    onTap: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    child: new Icon(
                        _obscureText ? Icons.visibility_off : Icons.visibility),
                  ),
                ),
                validator: validatePassword,
                obscureText: _obscureText,
              ),
              SizedBox(
                height: 30.0,
              ),
              Button(
                  onPressed: _sendToServer,
                  title: MyString.SignUp
              ),
              SizedBox(
                height: 140,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(MyString.Account, textAlign: TextAlign.start),
                    NewFlatButton(onPressed: () {}, title: MyString.SignIn)
                  ],
                ),
              ),
              NewFlatButton(
                onPressed: () {},
                title: MyString.SkipNow,
              )
            ],
          ),
        ),
      ),
    );
  }

  String validateName(String value) {
    String pattern = r'(^[a-zA-Z ]*$)';
    RegExp regExp = new RegExp(pattern);
    try {
      if (value.length == 0) {
        return "Name is Required";
      } else if (!regExp.hasMatch(value)) {
        return "Name must be a-z and A-Z";
      }
      return null;
    }
    catch(e) {
      throw(e);
    }
  }

  String validateEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    try {
      if (value.length == 0) {
        return "Email is Required";
      } else if (!regExp.hasMatch(value)) {
        return "Invalid Email";
      } else {
        return null;
      }
    } catch (e) {
      throw(e);
    }
  }

  String validatePassword(String value) {
    String pattern =r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = new RegExp(pattern);
    try {
      if (value.length == 0) {
        return "Password is Required";
      } else if (!regExp.hasMatch(value)) {
        return "Invalid Password";
      }
      return null;
    }
    catch(e) { throw(e);}
  }



  _sendToServer() {
    try {
      if (_key.currentState.validate()) {
        // No any error in validation
        //  _key.currentState.save();
        print("Name $name");
        print("Email $email");
        print("Password $password");

      } else {
        // validation error
        setState(() {
          _validate = true;
        });
      }
    } catch (e) {
      throw(e);
    }
  }
}
