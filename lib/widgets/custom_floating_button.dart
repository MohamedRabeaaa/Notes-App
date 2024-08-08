import 'package:flutter/material.dart';

import '../views/add_note_view.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const AddNoteView()),
        );
      },
      backgroundColor: const Color(0xff252525),
      shape: const CircleBorder(),
      child: const Icon(
        Icons.add,
        size: 35,
      ),
    );
  }
}
