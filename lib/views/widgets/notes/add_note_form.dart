import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_note/core/app_colors.dart';
import 'package:hive_note/cubits/add_note/add_note_cubit.dart';
import 'package:hive_note/models/note_model.dart';
import 'package:hive_note/views/widgets/notes/custom_add_button.dart';
import 'package:hive_note/views/widgets/shared/custom_text_field.dart';
import 'package:intl/intl.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, content;
  List<Color> noteColors = [
    AppColors.blue,
    AppColors.red,
    AppColors.green,
    AppColors.grey,
    AppColors.lightWhite,
  ];

  int color = AppColors.blue.value;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          SizedBox(height: 32.0.h),
          CustomTextField(
            hint: 'Title',
            onSaved: (title) => this.title = title,
          ),
          SizedBox(height: 8.0.h),
          CustomTextField(
            hint: 'Content',
            maxLines: 5,
            onSaved: (content) => this.content = content,
          ),
          SizedBox(height: 8.0.h),
          SizedBox(
            height: 64.0.h,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: noteColors.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 8.0.w),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        color = noteColors[index].value;
                      });
                    },
                    child: Container(
                      width: 40.0.w,
                      height: 40.0.h,
                      decoration: BoxDecoration(
                        color: noteColors[index],
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: noteColors[index].value == color
                              ? AppColors.white
                              : Colors.transparent,
                          width: 2.0.w,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          SizedBox(height: 48.0.h),
          BlocBuilder<AddNoteCubit, AddNoteState>(
            builder: (context, state) {
              return CustomAddButton(
                isLoading: state is AddNoteLoading,
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    BlocProvider.of<AddNoteCubit>(context).addNote(
                      NoteModel(
                        title: title!,
                        content: content!,
                        date: DateFormat('dd-MM-yyyy').format(DateTime.now()),
                        color: color,
                      ),
                    );
                  } else {
                    setState(
                      () {
                        autovalidateMode = AutovalidateMode.always;
                      },
                    );
                  }
                },
              );
            },
          ),
          SizedBox(height: 16.0.h),
        ],
      ),
    );
  }
}
