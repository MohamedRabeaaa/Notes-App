import 'package:flutter/material.dart';
import '../widgets/note_editing_body.dart';

class NoteEditing extends StatelessWidget {
  NoteEditing({super.key});

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          NoteEditingViewBody(
            formkey: formKey,
          ),
        ],
      ),
    ));
  }
}
