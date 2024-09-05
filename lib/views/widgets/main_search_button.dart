import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_note/core/app_colors.dart';

class MainSearchButton extends StatelessWidget {
  const MainSearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12.0.r),
      onTap: () {},
      child: Container(
        padding: EdgeInsets.all(8.0.r),
        decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12.0.r)),
        child: const Icon(
          Icons.search,
        ),
      ),
    );
  }
}
