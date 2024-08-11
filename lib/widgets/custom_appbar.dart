import 'package:flutter/material.dart';
import 'package:notes_app/constants/constants.dart';
import 'custom_appbar_icon.dart';
import 'notes_list_view.dart';
import 'save_alert_dialog.dart';

class CustomAppbar extends StatelessWidget {
  final VoidCallback onSavePressed;

  const CustomAppbar({
    super.key,
    required this.onSavePressed,
  });

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
        const Spacer(),
        CustomAppbarIcon(
          icon: eyeIcon,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NotesListView(),
              ),
            );
          },
        ),
        const SizedBox(width: 15),
        CustomAppbarIcon(
          icon: saveIcon,
          onPressed: onSavePressed,
        ),
      ],
    );
  }
}
