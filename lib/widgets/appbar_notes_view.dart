import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../constants/constants.dart';
import 'custom_appbar_icon.dart';

class AppbarNotesView extends StatelessWidget {
  const AppbarNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Notes',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
          ),
        ),
        const SizedBox(
          width: 120,
        ),
        CustomAppbarIcon(icon: searchIcon),
        const SizedBox(
          width: 15,
        ),
        CustomAppbarIcon(icon: infoIchIcon),
      ],
    );
  }
}
