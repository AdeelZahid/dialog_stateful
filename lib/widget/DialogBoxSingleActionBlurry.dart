import "dart:io";
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DialogBoxSingleActionBlurry extends StatelessWidget {
  String title;
  String content;
  VoidCallback continueCallBack;
  String? btnText;

  DialogBoxSingleActionBlurry(
      {this.title = "Title is missing",
      this.content = "",
      required this.continueCallBack,
      this.btnText});

  TextStyle textStyle = TextStyle(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
      child: _getAlertDialog(context),
    );
  }

  Widget _getAlertDialog(context) {
    if (Platform.isIOS || Platform.isMacOS)
      return CupertinoAlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <Widget>[
          new FlatButton(
            child: Text("Cancel"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          new FlatButton(
            child: new Text(btnText!),
            onPressed: () {
              Navigator.of(context).pop();
              continueCallBack();
            },
          ),
        ],
      );
    else
      return AlertDialog(
        title: Text(title),
        content: Text(content),
        actions: <Widget>[
          new FlatButton(
            child: new Text(btnText!),
            onPressed: () {
              Navigator.of(context).pop();
              continueCallBack();
            },
          ),
          new FlatButton(
            child: Text("Cancel"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
  }
}


// AlertDialog
// (
// title: new
// Text
// (
// title,style: textStyle,)
// ,
// content: new
// Text
// (
// content,style: textStyle,)
// ,
// actions: <
// Widget>[
// new
// FlatButton
// (
// child: new
// Text
// (
// btnText),
// onPressed: () {
// continueCallBack();
// },
// )
// ,
// new
// FlatButton
// (
// child: Text
// ("Cancel
// "
// )
// ,
// onPressed: () {
// Navigator.of(context).pop();
// },
// )
// ,
// ]
// ,
// )
// ,
