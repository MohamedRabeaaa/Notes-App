import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar_icon.dart';

import '../constants/constants.dart';
import '../widgets/custom_appbar.dart';
import '../widgets/custom_text_form_field.dart';
import '../widgets/save_alert_dialog.dart';

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
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, content;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          CustomAppbar(formKey: formKey),
          const SizedBox(
            height: 20,
          ),
          CustomTextFormField(
            text: 'Title',
            fontSize: 38,
            onSaved: (value) {
              title = value;
            },
          ),
          CustomTextFormField(
            text: 'Type something...',
            fontSize: 28,
            onSaved: (value) {
              content = value;
            },
          ),
        ],
      ),
    );
  }
}
