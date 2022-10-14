import 'package:flutter/material.dart';
import 'package:time_tracker_app/common_widgets/custom_elevated_button.dart';

class SignInButton extends CustomElevatedButton {
  SignInButton({
    Key key,
    @required String text,
    @required Color color,
    @required Color textColor,
    @required VoidCallback onPressed,
  })  : assert(text != null),
        super(
          disabledColor: color,
          key: key,
          child: Text(
            text,
            style: TextStyle(color: textColor, fontSize: 15.0),
          ),
          color: color,
          onPressed: onPressed,
        );
}
