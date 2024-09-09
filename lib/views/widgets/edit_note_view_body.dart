import 'package:flutter/material.dart';
import 'package:hive_note/core/app_constants.dart';
import 'package:hive_note/views/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppConstants.kHorizontalPadding,
        ),
        child: const Column(
          children: [
            CustomAppBar(
              text: 'Edit Note',
              icon: Icons.done,
            ),
          ],
        ),
      ),
    );
  }
}
