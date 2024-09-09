import 'package:flutter/material.dart';
import 'package:hive_note/models/note_model.dart';
import 'package:hive_note/views/widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  final NoteModel note;
  const EditNoteView({
    super.key,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteViewBody(
        note: note,
      ),
    );
  }
}
