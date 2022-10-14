import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    Key key,
    this.disabledColor = const Color.fromARGB(255, 176, 174, 174),
    @required this.child,
    @required this.color,
    this.borderRadius = 8.0,
    @required this.onPressed,
    this.height = 55.0,
  }) : super(
          key: key,
        );

  final Widget child;
  final Color color;
  final Color disabledColor;
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            onPressed == null ? disabledColor : color,
            //  const Color.fromARGB(255, 176, 174, 174)
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(borderRadius),
              ),
            ),
          ),
        ),
        onPressed: onPressed,
        child: child,
      ),
    );
  }
}
