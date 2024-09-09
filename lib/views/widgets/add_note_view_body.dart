import 'package:flutter/material.dart';
import 'package:hive_note/core/app_constants.dart';
import 'package:hive_note/views/widgets/custom_app_bar.dart';
import 'package:hive_note/views/widgets/notes_listview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

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
              text: 'Notes',
              icon: Icons.search,
            ),
            NotesListView(),
          ],
        ),
      ),
    );
  }
}
