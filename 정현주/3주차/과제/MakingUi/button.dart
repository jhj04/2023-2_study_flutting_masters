import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textcolor;

  const Button({
    super.key,
    required this.text,
    required this.bgColor,
    required this.textcolor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(45)
        ),
        child: Padding(
          padding : EdgeInsets.symmetric(
          horizontal: 45,
          vertical: 20),
          child: Text(
            text,
            style: TextStyle(
            fontSize: 22,
            color: textcolor,
          ),
        ),
      ),
    );
  }
}
