import 'package:flutter/material.dart';

import '../widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xff252525),
        shape: const CircleBorder(),
        child: const Icon(
          Icons.add,
          size: 35,
        ),
      ),
      body: const NotesViewBody(),
    );
  }
}
