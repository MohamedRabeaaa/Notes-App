import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final double fontSize;

  final void Function(String?)? onSaved;
  const CustomTextFormField({
    super.key,
    required this.text,
    required this.fontSize,
    this.onSaved,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is rquired';
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: text,
        hintStyle: TextStyle(
          fontSize: fontSize,
          color: const Color(0xff9A9A9A),
        ),
      ),
    );
  }
}
