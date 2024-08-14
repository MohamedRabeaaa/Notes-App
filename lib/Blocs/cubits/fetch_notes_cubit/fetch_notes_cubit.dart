import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants/constants.dart';

import '../../../models/note_model.dart';

part 'fetch_notes_state.dart';

class FetchNotesCubit extends Cubit<FetchNotesState> {
  FetchNotesCubit() : super(FetchNotesInitial());
  List<Note>? notes;
  fetchAllNotes() async {
    var notesBox = Hive.box<Note>(kNotesBox);
    notes = notesBox.values.toList();
    emit(FetchNotesSuccess());
  }
}
