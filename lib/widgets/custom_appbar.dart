import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Blocs/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/Blocs/cubits/fetch_notes_cubit/fetch_notes_cubit.dart';
import 'package:notes_app/constants/constants.dart';
import 'package:notes_app/views/notes_view.dart';
import 'package:notes_app/widgets/save_alert_dialog.dart';
import '../models/note_model.dart';
import 'custom_appbar_icon.dart';

class CustomAppbar extends StatelessWidget {
  // final String? title;
  // final String? content;
  // final Note note;
  final void Function() onSavedPressed;

  const CustomAppbar({
    super.key,
    // this.title,
    // this.content,
    // required this.note,
    required this.onSavedPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomAppbarIcon(
          icon: isoArrowBackIcon,
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        const Spacer(),
        CustomAppbarIcon(
          icon: eyeIcon,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const NotesView(),
              ),
            );
          },
        ),
        const SizedBox(width: 15),
        CustomAppbarIcon(
          icon: saveIcon,
          onPressed: () async {
            await showDialog<bool>(
              context: context,
              builder: (BuildContext context) {
                return SaveAlertDialog(
                  onSavePressed: onSavedPressed,
                  text1: 'Discard',
                  text2: 'Save',
                );
              },
            );
          },
        ),
      ],
    );
  }
}
