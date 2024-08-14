part of 'fetch_notes_cubit.dart';

@immutable
sealed class FetchNotesState {}

class FetchNotesInitial extends FetchNotesState {}

class FetchNotesSuccess extends FetchNotesState {}
