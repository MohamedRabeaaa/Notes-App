import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Blocs/cubits/fetch_notes_cubit/fetch_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/note_editing.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({
    super.key,
    required this.notes,
  });

  final Note notes;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Dismissible(
          key: Key(notes.key
              .toString()), // Use the Hive object's key as a unique key
          onDismissed: (direction) {
            // Perform the action when the item is swiped
            if (direction == DismissDirection.endToStart ||
                direction == DismissDirection.startToEnd) {
              // Delete the note when dismissed
              notes.delete();
              BlocProvider.of<FetchNotesCubit>(context).fetchAllNotes();
            }
          },
          background: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffFF0000),
            ),
            // Background color when swiped
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
          secondaryBackground: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xffFF0000),
            ), // Background color when swiped from the other direction
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
          child: GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => NoteEditing(
                            note: notes,
                          )));
            },
            child: Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(notes.color),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    notes.title,
                    style: const TextStyle(
                      fontSize: 35,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 20), // Add a SizedBox after each note item
      ],
    );
  }
}
