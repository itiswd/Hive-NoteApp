import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_note/core/app_colors.dart';
import 'package:hive_note/core/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColors.lightWhite,
      decoration: InputDecoration(
        hintText: 'Title',
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
