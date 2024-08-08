import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_body.dart';

import '../widgets/appbar_notes_view.dart';
import '../widgets/custom_floating_button.dart';
import '../widgets/custom_notes_item.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: CustomFloatingActionButton(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.0),
        child: NotesViewBody(),
      ),
    );
  }
}
