import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_note/core/app_constants.dart';
import 'package:hive_note/core/app_styles.dart';
import 'package:hive_note/models/note_model.dart';
import 'package:hive_note/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  final NoteModel note;
  const NoteItem({
    super.key,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(16.0.r),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const EditNoteView(),
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.all(24.0.r),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0.r),
          color: Color(note.color),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(0),
              title: Text(
                note.title,
                style: AppStyles.title,
              ),
              subtitle: Padding(
                padding: EdgeInsets.symmetric(vertical: kVerticalPadding),
                child: Text(
                  note.content,
                  style: AppStyles.body,
                ),
              ),
              trailing: InkWell(
                borderRadius: BorderRadius.circular(16.0.r),
                onTap: () {},
                child: Image.asset(
                  width: 28.0.h,
                  height: 28.0.h,
                  'assets/images/delete.png',
                ),
              ),
            ),
            Text(
              note.date,
              style: AppStyles.date,
            ),
          ],
        ),
      ),
    );
  }
}
