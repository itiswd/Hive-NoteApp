import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_note/core/app_colors.dart';

class CustomAppbarButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onTap;
  const CustomAppbarButton({
    super.key,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12.0.r),
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(8.0.r),
        decoration: BoxDecoration(
            color: AppColors.white.withOpacity(0.1),
            borderRadius: BorderRadius.circular(12.0.r)),
        child: Icon(
          icon,
        ),
      ),
    );
  }
}
