import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/add_note_color_list.dart';
import 'package:notes_app/widgets/custom_elevated_button.dart';
import '../Blocs/cubits/add_note_cubit/add_note_cubit.dart';
import 'custom_appbar.dart';
import 'custom_text_form_field.dart';

class AddNoteForm extends StatefulWidget {
  final Note? note; // Add this line to accept a note

  const AddNoteForm({
    super.key,
    this.note, // Update the constructor to accept a note
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.always;
  String? title, content;

  @override
  void initState() {
    super.initState();
    if (widget.note != null) {
      title = widget.note?.title;
      content = widget.note?.content;
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 40),
              CustomAppbar(
                onSavedPressed: () {
                  Navigator.pop(context);
                }, // Pass the note to the CustomAppbar
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                // Pre-fill with existing title if editing
                onSaved: (value) {
                  title = value;
                },
                hintText: 'Title',
                fontSize: 38,
              ),
              const SizedBox(height: 20),
              CustomTextFormField(
                // Pre-fill with existing content if editing
                onSaved: (value) {
                  content = value;
                },
                hintText: 'Type something...',
                fontSize: 28,
                maxline: 10,
              ),
              const SizedBox(height: 20),
              const AddNoteColorList(),
              const SizedBox(height: 20),
              CustomElevatedButton(
                  buttonHight: 50,
                  text: 'Add',
                  fontSize: 30,
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();

                      var note = Note(
                        title: title!,
                        content: content!,
                        color: Colors.blue.value,
                      );
                      BlocProvider.of<AddNoteCubit>(context).addNote(note);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                  backGroundColor: Colors.teal),
              // const ColorList(),
            ],
          ),
        ),
      ),
    );
  }
}
