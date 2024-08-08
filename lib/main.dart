import "package:flutter/material.dart";
import 'package:hive_flutter/hive_flutter.dart';

import "constants/constants.dart";
import "views/empty_notes_view.dart";
import "views/notes_view.dart";

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Nunito',
      ),
      home: const NotesView(),
    );
  }
}
