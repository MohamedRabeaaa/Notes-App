import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/Blocs/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/constants/constants.dart';
import 'package:notes_app/widgets/colors_item.dart';

class AddNoteColorList extends StatefulWidget {
  const AddNoteColorList({
    super.key,
  });

  @override
  State<AddNoteColorList> createState() => _ColorListState();
}

class _ColorListState extends State<AddNoteColorList> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32 * 2,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3.0),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;
                BlocProvider.of<AddNoteCubit>(context).color = kColors[index];
                setState(() {});
              },
              child: ColorsItem(
                color: kColors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
