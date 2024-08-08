import 'package:flutter/material.dart';

class CustomSearchField extends StatelessWidget {
  final String? hintText;
  final Icon icon;
  const CustomSearchField({
    super.key,
    this.hintText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(25),
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
          suffixIcon: IconButton(
            icon: icon,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 25,
          ),
        ),
      ),
    );
  }
}
