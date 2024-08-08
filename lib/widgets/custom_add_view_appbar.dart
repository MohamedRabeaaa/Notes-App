import 'package:flutter/material.dart';

class CustomAddViewAppbar extends StatelessWidget {
  final Icon icon1;
  final Icon icon2;
  final Icon icon3;

  const CustomAddViewAppbar({
    super.key,
    required this.icon1,
    required this.icon2,
    required this.icon3,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          height: 40,
        ),
        IconButton(
          icon: icon1,
          onPressed: () {},
        ),
        const SizedBox(
          width: 120,
        ),
        IconButton(
          icon: icon2,
          onPressed: () {},
        ),
        const SizedBox(
          width: 15,
        ),
        IconButton(
          icon: icon3,
          onPressed: () {},
        ),
      ],
    );
  }
}
