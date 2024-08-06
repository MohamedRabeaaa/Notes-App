import 'package:flutter/material.dart';

class CustomAppbarIcon extends StatelessWidget {
  final Icon icon;
  const CustomAppbarIcon({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 35,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xff3B3B3B),
      ),
      child: Center(
        child: IconButton(
          onPressed: () {},
          icon: icon,
        ),
      ),
    );
  }
}
