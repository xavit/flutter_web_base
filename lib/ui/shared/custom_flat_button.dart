import 'package:flutter/material.dart';

class CustomeFlatButton extends StatelessWidget {
  String text;
  Function() onPressed;
  Color color;

  CustomeFlatButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        child: TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 20,
          color: color,
        ),
      ),
    ));
  }
}
