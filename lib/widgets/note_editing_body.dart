import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:notes_app/widgets/color_list.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_text_form_field.dart';

import '../Blocs/cubits/fetch_notes_cubit/fetch_notes_cubit.dart';

class NoteEditingViewBody extends StatefulWidget {
  const NoteEditingViewBody({
    super.key,
    required this.note,
  });
  final Note note;

  @override
  _NoteEditingViewBodyState createState() => _NoteEditingViewBodyState();
}

class _NoteEditingViewBodyState extends State<NoteEditingViewBody> {
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 40),
        CustomAppbar(
          onSavedPressed: () {
            widget.note.title = title ?? widget.note.title;
            widget.note.content = content ?? widget.note.content;
            widget.note.save();
            BlocProvider.of<FetchNotesCubit>(context).fetchAllNotes();
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const NotesView()));
          },
        ),
        const SizedBox(height: 20),
        CustomTextFormField(
          onChanged: (value) {
            title = value;
          },
          hintText: widget.note.title,
          fontSize: 38,
          fontWeight: FontWeight.bold,
        ),
        CustomTextFormField(
          onChanged: (value) {
            content = value;
          },
          hintText: widget.note.content,
          fontSize: 22,
          maxline: 17,
        ),
        ColorList(
          note: widget.note,
        ),
      ],
    );
  }
}
