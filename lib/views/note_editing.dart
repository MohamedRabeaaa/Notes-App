import 'package:flutter/material.dart';

import '../widgets/note_editing_body.dart';

class NoteEditing extends StatelessWidget {
  const NoteEditing({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          NoteEditingViewBody(),
        ],
      ),
    ));
  }
}
