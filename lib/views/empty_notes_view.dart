import 'package:flutter/material.dart';
import '../widgets/custom_floating_button.dart';
import '../widgets/empty_notes_view_body.dart';

class EmptyNotesView extends StatelessWidget {
  const EmptyNotesView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const CustomFloatingActionButton(),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: const EmptyNotesViewBody(),
        ),
      ),
    );
  }
}
