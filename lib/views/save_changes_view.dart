import 'package:flutter/material.dart';

import '../models/note_model.dart';
import 'add_note_view.dart';

class SaveChangesView extends StatelessWidget {
  final Note note;
  const SaveChangesView({super.key, required this.note});

  @override
  Widget build(BuildContext context) {
    return const AddNoteView(
        // backgroundColor: Colors.black.withOpacity(0.50),
        );
  }
}
