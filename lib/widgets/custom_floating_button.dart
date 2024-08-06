import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 110, left: 220),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: const Color(0xff252525),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            // iconSize: 35, // Adjust the icon size as needed
          ),
        ),
      ),
    );
  }
}
