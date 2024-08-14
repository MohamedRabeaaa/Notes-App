import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Blocs/cubits/fetch_notes_cubit/fetch_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import '../widgets/custom_notes_item.dart';

class NotesListView extends StatefulWidget {
  const NotesListView({Key? key}) : super(key: key);

  @override
  State<NotesListView> createState() => _NotesListViewState();
}

class _NotesListViewState extends State<NotesListView> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchNotesCubit, FetchNotesState>(
        builder: (context, state) {
      List<Note> notes = BlocProvider.of<FetchNotesCubit>(context).notes ?? [];
      return ListView.builder(
        itemCount: notes.length,
        itemBuilder: (context, index) {
          return NotesItem(
            notes: notes[index],
          );
        },
      );
    });
  }
}
