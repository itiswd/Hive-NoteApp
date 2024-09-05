import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_note/core/app_colors.dart';
import 'package:hive_note/core/app_styles.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final int maxLines;
  const CustomTextField({
    super.key,
    required this.title,
    this.maxLines = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.lightWhite,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: title,
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
