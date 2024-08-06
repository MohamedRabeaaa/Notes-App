import 'package:flutter/material.dart';

class CustomAppbarIcon extends StatelessWidget {
  final Icon icon;
  final VoidCallback onPressed;

  const CustomAppbarIcon({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 37,
      height: 37,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff3B3B3B),
      ),
      child: Center(
        child: IconButton(
          onPressed: onPressed,
          icon: icon,
        ),
      ),
    );
  }
}
