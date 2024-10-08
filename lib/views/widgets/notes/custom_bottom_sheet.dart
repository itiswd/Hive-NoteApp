import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_note/core/app_constants.dart';
import 'package:hive_note/cubits/add_note/add_note_cubit.dart';
import 'package:hive_note/cubits/notes/notes_cubit.dart';
import 'package:hive_note/views/widgets/notes/add_note_form.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteSuccess) {
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.of(context).pop();
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: Padding(
                padding: EdgeInsets.only(
                  right: kHorizontalPadding,
                  left: kHorizontalPadding,
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: const AddNoteForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
