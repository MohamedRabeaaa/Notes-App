import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';

import 'appbar_notes_view.dart';

class NoteEditingViewBody extends StatelessWidget {
  const NoteEditingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(
          height: 40,
        ),
        CustomAppbar(),
      ],
    );
  }
}
