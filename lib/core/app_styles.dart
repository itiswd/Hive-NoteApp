import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_note/core/app_colors.dart';

class AppStyles {
  static TextStyle header = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 36.sp,
  );
  static TextStyle title = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 20.sp,
    color: AppColors.black,
  );
  static TextStyle body = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 16.sp,
    color: AppColors.black.withOpacity(0.5),
  );
  static TextStyle date = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12.sp,
    color: AppColors.black.withOpacity(0.5),
  );
  static TextStyle hint = TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14.sp,
    color: AppColors.lightWhite,
  );
}
