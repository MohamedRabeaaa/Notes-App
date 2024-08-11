import "package:flutter/material.dart";
import "package:notes_app/constants/constants.dart";
import "package:notes_app/models/note_model.dart";
import "views/empty_notes_view.dart";
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteAdapter());
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
      home: const EmptyNotesView(),
    );
  }
}
