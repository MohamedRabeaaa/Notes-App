import 'package:flutter/material.dart';

import 'add_note_view.dart';

class SaveChangesView extends StatelessWidget {
  const SaveChangesView({super.key});

  @override
  Widget build(BuildContext context) {
    return AddNoteView(
      backgroundColor: Colors.black.withOpacity(0.50),
    );
  }
}
