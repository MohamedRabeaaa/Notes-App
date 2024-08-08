import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';

import 'appbar_notes_view.dart';

class NoteEditingViewBody extends StatelessWidget {
  final GlobalKey<FormState> formkey;
  const NoteEditingViewBody({super.key, required this.formkey});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 40,
        ),
        CustomAppbar(
          formKey: formkey,
        ),
      ],
    );
  }
}
