import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_note/core/app_constants.dart';
import 'package:hive_note/views/widgets/custom_text_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: AppConstants.kHorizontalPadding,
      ),
      child: Column(
        children: [
          SizedBox(height: 32.0.h),
          const CustomTextField(
            title: 'Title',
          ),
          SizedBox(height: 8.0.h),
          const CustomTextField(
            title: 'Content',
            maxLines: 5,
          ),
        ],
      ),
    );
  }
}
