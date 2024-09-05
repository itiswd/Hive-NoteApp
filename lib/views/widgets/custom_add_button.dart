import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_note/core/app_colors.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      borderRadius: BorderRadius.circular(8.0.r),
      child: Container(
        height: 40.0.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(8.0.r),
        ),
        child: Center(
          child: Text(
            'Add',
            style: TextStyle(
              color: AppColors.white,
              fontSize: 18.0.sp,
            ),
          ),
        ),
      ),
    );
  }
}
