import 'package:flutter/material.dart';
import 'package:hive_note/views/widgets/notes/custom_floating_action_button.dart';
import 'package:hive_note/views/widgets/notes/add_note_view_body.dart';

class AddNoteView extends StatelessWidget {
  const AddNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: CustomFloatingActionButton(),
      body: HomeViewBody(),
    );
  }
}
