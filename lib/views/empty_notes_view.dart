import 'package:flutter/material.dart';

import '../widgets/custom_floating_button.dart';
import '../widgets/empty_notes_view_body.dart';
import 'add_note_view.dart';

class EmptyNotesView extends StatelessWidget {
  const EmptyNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: CustomFloatingActionButton(),
      body: EmptyNotesViewBody(),
    );
  }
}
