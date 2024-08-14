import 'package:flutter/material.dart';
import 'package:notes_app/views/search_view.dart';

import '../constants/constants.dart';
import 'custom_appbar_icon.dart';
import 'info_alert_dialog.dart';

class AppbarNotesView extends StatelessWidget {
  const AppbarNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Notes',
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.w700,
          ),
        ),
        const Spacer(),
        CustomAppbarIcon(
          icon: searchIcon,
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SearchView(),
              ),
            );
          },
        ),
        const SizedBox(width: 15),
        CustomAppbarIcon(
          icon: infoIchIcon,
          onPressed: () async {
            await showDialog(
              context: context,
              builder: (context) {
                return const InfoAlertDialog();
              },
            );
          },
        ),
      ],
    );
  }
}
