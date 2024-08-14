import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import '../widgets/note_editing_body.dart';

class NoteEditing extends StatelessWidget {
  const NoteEditing({
    super.key,
    required this.note,
  });
  final Note note;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: NoteEditingViewBody(
            note: note,
          ),
        ),
      ),
    );
  }
}
