import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_note/core/app_colors.dart';

class CustomAddButton extends StatelessWidget {
  final void Function()? onTap;
  final bool isLoading;
  const CustomAddButton({
    super.key,
    this.onTap,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(8.0.r),
      child: Container(
        height: 40.0.h,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(8.0.r),
        ),
        child: Center(
            child: isLoading
                ? SizedBox(
                    width: 24.0.w,
                    height: 24.0.w,
                    child: CircularProgressIndicator(
                      color: AppColors.white,
                      strokeWidth: 3,
                      backgroundColor: AppColors.lightWhite,
                    ),
                  )
                : Text(
                    'Add',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 18.0.sp,
                    ),
                  )),
      ),
    );
  }
}
