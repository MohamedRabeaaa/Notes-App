import 'package:flutter/material.dart';
import 'package:notes_app/widgets/notes_view_body.dart';
import '../widgets/custom_floating_button.dart';

class NotesView extends StatelessWidget {
  const NotesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const CustomFloatingActionButton(),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: NotesViewBody(),
        ),
      ),
    );
  }
}
