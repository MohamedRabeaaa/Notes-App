import 'package:flutter/material.dart';

import 'appbar_notes_view.dart';

class EmptyNotesViewBody extends StatelessWidget {
  const EmptyNotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
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
        ],
      ),
    );
  }
}
