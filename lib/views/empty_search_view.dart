import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widgets/custom_search_field.dart';

class EmptySearchView extends StatelessWidget {
  final String? textSearch;
  const EmptySearchView({
    super.key,
    this.textSearch,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomSearchField(
            hintText: textSearch,
            icon: closeIcon,
          ),
          const SizedBox(
            height: 120,
          ),
          Image.asset('assets/images/empty search.png'),
          Text(
            'File not found. Try searching again.',
            style: TextStyle(
              fontFamily: 'assets/fonts/Nunito-Light.ttf',
            ),
          ),
        ],
      ),
    );
  }
}
