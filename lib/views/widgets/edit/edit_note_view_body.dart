import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_note/core/app_constants.dart';
import 'package:hive_note/cubits/notes/notes_cubit.dart';
import 'package:hive_note/models/note_model.dart';

import 'package:hive_note/views/widgets/shared/custom_app_bar.dart';
import 'package:hive_note/views/widgets/shared/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  final NoteModel note;
  const EditNoteViewBody({
    super.key,
    required this.note,
  });

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: kHorizontalPadding,
        ),
        child: Column(
          children: [
            CustomAppBar(
              onTap: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.content = content ?? widget.note.content;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
              text: 'Edit Note',
              icon: Icons.done,
            ),
            SizedBox(height: 16.0.w),
            CustomTextField(
              onChanged: (value) {
                title = value;
              },
              initialValue: widget.note.title,
              hint: 'Title',
            ),
            SizedBox(height: 8.0.w),
            CustomTextField(
              onChanged: (value) {
                content = value;
              },
              initialValue: widget.note.content,
              hint: 'Content',
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
