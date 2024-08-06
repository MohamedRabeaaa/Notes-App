import 'package:flutter/material.dart';

class CustomTextFromField extends StatelessWidget {
  final String? hintText;
  final Icon? icon;
  const CustomTextFromField({
    super.key,
    this.hintText,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 0.0,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
              fontSize: 18,
              color: Color(0xffCCCCCC),
              fontFamily: 'assets/fonts/Nunito-Light.ttf'),
          filled: true,
          fillColor: const Color(0xff3B3B3B),
          suffixIcon: icon,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 25,
          ),
        ),
      ),
    );
  }
}
