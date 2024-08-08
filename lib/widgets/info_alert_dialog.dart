import 'package:flutter/material.dart';

class InfoAlertDialog extends StatelessWidget {
  const InfoAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      content: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 10,
          ),
          Text('Designed by - '),
          SizedBox(
            height: 10,
          ),
          Text('Redesigned by - '),
          SizedBox(
            height: 10,
          ),
          Text('Illustrations - '),
          SizedBox(
            height: 10,
          ),
          Text('Icons - '),
          SizedBox(
            height: 10,
          ),
          Text('Font -'),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 60.0),
            child: Text('Made by'),
          )
        ],
      ),
    );
  }
}
