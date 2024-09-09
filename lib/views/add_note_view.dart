import 'package:flutter/material.dart';
import 'package:hive_note/views/widgets/custom_floating_action_button.dart';
import 'package:hive_note/views/widgets/add_note_view_body.dart';

class AddNoteView extends StatelessWidget {
  const AddNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: CustomFloatingActionButton(),
      body: HomeViewBody(),
    );
  }
}
