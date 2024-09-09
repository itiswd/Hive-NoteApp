import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_note/core/app_colors.dart';
import 'package:hive_note/core/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String? hint;
  final int maxLines;
  final String? initialValue;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  const CustomTextField({
    super.key,
    this.hint,
    this.maxLines = 1,
    this.onSaved,
    this.onChanged,
    this.initialValue,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty == true) {
          return 'Field cannot be empty';
        }
        return null;
      },
      cursorColor: AppColors.lightWhite,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: AppStyles.hint,
        border: buildBorder(),
        focusedBorder: buildBorder(),
        enabledBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(8.0.r),
      ),
      borderSide: const BorderSide(
        color: AppColors.white,
      ),
    );
  }
}
