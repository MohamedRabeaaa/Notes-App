import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'custom_appbar_icon.dart';
import 'save_alert_dialog.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // const SizedBox(
        //   width: 10,
        // ),
        CustomAppbarIcon(
          icon: isoArrowBackIcon,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        Spacer(),
        CustomAppbarIcon(
          icon: eyeIcon,
          onPressed: () {},
        ),
        const SizedBox(
          width: 15,
        ),
        CustomAppbarIcon(
          icon: saveIcon,
          onPressed: () async {
            await showDialog(
              context: context,
              builder: (context) {
                return const SaveAlertDialog(
                  text1: 'Discard',
                  text2: 'Save',
                );
              },
            );
          },
        ),
      ],
    );
  }
}
