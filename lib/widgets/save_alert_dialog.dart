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
    // Get the current width of the screen and subtract 25 to increase the width
    double dialogWidth = MediaQuery.of(context).size.width - 25;

    return Dialog(
      child: Container(
        width: dialogWidth,
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 10,
            ),
            const Icon(Icons.info_outline),
            const SizedBox(
              height: 20,
            ),
            const Text('Save changes ?'),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CustomElevatedButton(
                  text: text1,
                  backGroundColor: const Color(0xffFF0000),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                const SizedBox(
                  width: 15,
                ),
                CustomElevatedButton(
                  text: text2,
                  backGroundColor: const Color(0xff30BE71),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
