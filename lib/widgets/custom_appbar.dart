import 'package:flutter/material.dart';

import '../constants/constants.dart';
import 'custom_appbar_icon.dart';
import 'save_alert_dialog.dart';

class CustomAppbar extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  const CustomAppbar({super.key, required this.formKey});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
                return SaveAlertDialog(
                  text1: 'Discard',
                  text2: 'Save',
                  formKey: formKey,
                );
              },
            );
          },
        ),
      ],
    );
  }
}
