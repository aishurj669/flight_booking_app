import 'package:flutter/material.dart';

import '../common/colors.dart';

class Button extends StatelessWidget {
  Button({@required this.onPressed, @required this.title});

  final GestureTapCallback onPressed;
  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      color: MyColors.buttonpink,
      child: Container(
          width: MediaQuery.of(context).size.width * 0.55,
          padding: EdgeInsets.all(18.0),
          child: Text(
            title,
            style: TextStyle(
                color: MyColors.textwhite,
                fontSize: 15),
            textAlign: TextAlign.center,
          )),
      onPressed: onPressed,
      shape: const StadiumBorder(),
    );
  }
}
