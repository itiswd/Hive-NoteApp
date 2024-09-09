import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_note/core/app_constants.dart';
import 'package:hive_note/cubits/add_note/add_note_cubit.dart';
import 'package:hive_note/views/widgets/add_note_form.dart';

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
            Navigator.of(context).pop();
          }
          if (state is AddNoteFailed) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(state.message),
              ),
            );
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: AbsorbPointer(
              absorbing: state is AddNoteLoading ? true : false,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: kHorizontalPadding,
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
