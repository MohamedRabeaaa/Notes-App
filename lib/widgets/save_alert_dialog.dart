import 'package:flutter/material.dart';

import 'custom_elevated_button.dart';

class SaveAlertDialog extends StatelessWidget {
  final String text1;
  final String text2;
  const SaveAlertDialog({
    super.key,
    required this.text1,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: const Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 10,
          ),
          Icon(Icons.info_outline),
          SizedBox(
            height: 20,
          ),
          Text('Save changes ?'),
          SizedBox(
            height: 10,
          ),
        ],
      ),
      actions: [
        Row(
          children: [
            CustomElevatedButton(
              text: text1,
              backGroundColor: const Color(0xffFF0000),
              onPressed: () {},
            ),
            const SizedBox(
              width: 15,
            ),
            CustomElevatedButton(
              text: text2,
              backGroundColor: const Color(0xff30BE71),
              onPressed: () {},
            ),
          ],
        )
      ],
    );
  }
}
