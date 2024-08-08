import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar_icon.dart';

import '../constants/constants.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/save_alert_dialog.dart';

class AddNoteView extends StatelessWidget {
  final Color? backgroundColor;
  const AddNoteView({super.key, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            const CustomAppbar(),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Title',
                hintStyle: TextStyle(
                  fontSize: 38,
                  color: Color(0xff9A9A9A),
                ),
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: 'Type something...',
                hintStyle: TextStyle(
                  fontSize: 22,
                  color: Color(0xff9A9A9A),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
