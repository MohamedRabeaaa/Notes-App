import 'package:flutter/material.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_text_form_field.dart';

class AddNoteView extends StatelessWidget {
  final Color? backgroundColor;
  const AddNoteView({super.key, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(height: 40),
          CustomAppbar(
            onSavePressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                // Save the note data here.
              } else {
                setState(() {
                  autovalidateMode = AutovalidateMode.always;
                });
              }
            },
          ),
          const SizedBox(height: 20),
          CustomTextFormField(
            onSaved: (value) {
              title = value;
            },
            text: 'Title',
            fontSize: 38,
          ),
          CustomTextFormField(
            onSaved: (value) {
              content = value;
            },
            text: 'Type something...',
            fontSize: 28,
          ),
        ],
      ),
    );
  }
}
