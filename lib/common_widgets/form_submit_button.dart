import 'package:flutter/material.dart';
import 'package:time_tracker_app/common_widgets/custom_elevated_button.dart';

class FormSubmitButton extends CustomElevatedButton {
  FormSubmitButton({
    Key key,
    @required String text,
    VoidCallback onPressed,
  }) : super(
          key: key,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          height: 44.0,
          disabledColor: const Color.fromARGB(255, 176, 174, 174),
          color: const Color.fromARGB(255, 70, 102, 106),
          borderRadius: 4.0,
          onPressed: onPressed,
        );
}
