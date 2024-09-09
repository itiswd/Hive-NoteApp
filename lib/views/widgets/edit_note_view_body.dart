import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_note/core/app_constants.dart';
import 'package:hive_note/views/widgets/custom_app_bar.dart';
import 'package:hive_note/views/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: kHorizontalPadding,
        ),
        child: Column(
          children: [
            const CustomAppBar(
              text: 'Edit Note',
              icon: Icons.done,
            ),
            SizedBox(height: 16.0.w),
            const CustomTextField(title: 'Title'),
            SizedBox(height: 8.0.w),
            const CustomTextField(title: 'Content', maxLines: 5),
          ],
        ),
      ),
    );
  }
}
