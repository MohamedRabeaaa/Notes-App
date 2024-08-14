import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/Blocs/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/Blocs/cubits/fetch_notes_cubit/fetch_notes_cubit.dart';
import '../widgets/add_note_form.dart';

class AddNoteView extends StatelessWidget {
  final Color? backgroundColor;
  const AddNoteView({
    super.key,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if (state is AddNoteFailure) {}
            if (state is AddNoteSuccess) {
              BlocProvider.of<FetchNotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            }
          },
          builder: (context, state) {
            // Add your UI logic here based on the state
            return ModalProgressHUD(
              inAsyncCall: state is AddNoteLoading ? true : false,
              child: const AddNoteForm(),
            ); // Display AddNoteForm inside the builder
          },
        ),
      ),
    );
  }
}
