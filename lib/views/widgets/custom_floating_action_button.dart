import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_note/core/app_colors.dart';
import 'package:hive_note/views/widgets/custom_bottom_sheet.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: AppColors.buttonColor,
      elevation: 0,
      onPressed: () {
        showModalBottomSheet(
          isScrollControlled: true,
          clipBehavior: Clip.antiAlias,
          context: context,
          builder: (context) {
            return const CustomBottomSheet();
          },
        );
      },
      child: Image.asset(
        width: 24.0.w,
        height: 24.0.h,
        'assets/images/edit.png',
        color: AppColors.white,
      ),
    );
  }
}
