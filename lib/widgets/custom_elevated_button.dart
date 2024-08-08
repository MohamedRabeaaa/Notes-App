import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Color backGroundColor;
  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.backGroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height: 32,
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
            style: const TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold),
          ))),
    );
  }
}
