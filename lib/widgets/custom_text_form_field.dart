import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String hintText;
  final Color? hintColor;
  final int? maxline;
  final double fontSize;
  final FontWeight? fontWeight;
  final TextEditingController? controller;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  const CustomTextFormField({
    super.key,
    required this.hintText,
    required this.fontSize,
    this.onSaved,
    this.controller,
    this.fontWeight,
    this.maxline,
    this.onChanged,
    this.hintColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      maxLines: maxline,
      onChanged: onChanged,
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
        hintText: hintText,
        hintStyle: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: hintColor,
        ),
      ),
    );
  }
}
