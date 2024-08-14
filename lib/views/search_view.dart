import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widgets/custom_search_field.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: CustomSearchField(
                hintText: 'Search by the keyword...',
                icon: closeIcon,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
