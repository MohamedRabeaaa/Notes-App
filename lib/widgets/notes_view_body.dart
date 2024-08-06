import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_floating_button.dart';

import 'appbar_notes_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          const AppbarNotesView(),
          const SizedBox(
            height: 100,
          ),
          Image.asset('assets/images/search.png'),
          const Text(
            'Create your first note !',
            style: TextStyle(
              fontFamily: 'assets/fonts/Nunito-Light.ttf',
            ),
          ),
          const CustomFloatingButton(),
        ],
      ),
    );
  }
}
