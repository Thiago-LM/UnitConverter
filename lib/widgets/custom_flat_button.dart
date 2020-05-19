import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class CustomFlatButton extends FlatButton {
  CustomFlatButton({Key key,
    @required onPressed,
    text = "botão",
    @required Widget icon,
    color = Colors.blue,
    borderRadius = 15.0,
  }) : super(key: key,
    onPressed: onPressed,
    color: color,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        borderRadius
      )
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Flexible(
          flex: 10,
          child: icon,
        ),
        Spacer(
          flex: 1,
        ),
        Flexible(
          flex: 7,
          child: text,
        ),
      ],
    ),  
  );
}