import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_note/cubits/notes/notes_cubit.dart';
import 'package:hive_note/views/widgets/custom_floating_action_button.dart';
import 'package:hive_note/views/widgets/add_note_view_body.dart';

class AddNoteView extends StatelessWidget {
  const AddNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: const Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: CustomFloatingActionButton(),
        body: HomeViewBody(),
      ),
    );
  }
}
