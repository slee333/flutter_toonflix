import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  // Define variables
  final String text;
  final Color bgColor;
  final Color textColor;

  // Create a constructor
  const Button(
      {super.key,
      required this.text,
      required this.bgColor,
      required this.textColor});

  // Actual widget goes here
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(45),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 50,
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 20,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
