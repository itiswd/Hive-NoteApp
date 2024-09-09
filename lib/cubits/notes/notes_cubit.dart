import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hive_note/core/app_constants.dart';
import 'package:hive_note/models/note_model.dart';
part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  void fetchAllNotes() {
    try {
      final notesBox = Hive.box<NoteModel>(kNoteBox);
      List<NoteModel> notes = notesBox.values.toList();
      emit(NotesSuccess(notes: notes));
    } catch (e) {
      emit(NotesFailed(message: e.toString()));
    }
  }
}
