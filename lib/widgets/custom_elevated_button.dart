import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final void Function() onPressed;
  final Color backGroundColor;
  final double? buttonHight;
  final double? fontSize;
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.backGroundColor,
    this.buttonHight = 32,
    this.fontSize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: buttonHight,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backGroundColor,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
          // padding: EdgeInsets.symmetric(horizontal: 30),
          // maximumSize: const Size(40, 20),
        ),
        onPressed: onPressed,
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontSize: fontSize,
                color: Colors.white,
                fontWeight: FontWeight.bold),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}
