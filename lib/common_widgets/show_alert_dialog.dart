import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

Future<bool> showAlertDialog(
  BuildContext context, {
  @required String title,
  @required String content,
  String canceldActionText,
  @required String defaultActionText,
}) {

  // Here i don't want to use Android's design of showing dialog window to user, 
  //but in the future this code can be useful. So i just left it here.

  // if (!Platform.isIOS) {
  //   return showDialog(
  //     context: context,
  //     builder: (context) => AlertDialog(
  //       title: Text(title),
  //       content: Text(content),
  //       actions: <Widget>[
  //         TextButton(
  //           onPressed: () => Navigator.of(context).pop(true),
  //           child: Text(defaultActionText),
  //         ),
  //       ],
  //     ),
  //   );
  // }
  // if (Platform.isAndroid) {

  return showCupertinoDialog(
    context: context,
    builder: (context) => CupertinoAlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        if (canceldActionText != null)
          CupertinoDialogAction(
            child: Text(canceldActionText),
            onPressed: () => Navigator.of(context).pop(false),
          ),
        CupertinoDialogAction(
          onPressed: () => Navigator.of(context).pop(true),
          child: Text(defaultActionText),
        ),
      ],
    ),
  );
}
// }
