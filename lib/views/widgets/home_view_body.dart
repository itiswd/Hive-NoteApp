import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_note/core/app_constants.dart';
import 'package:hive_note/views/widgets/home_app_bar.dart';
import 'package:hive_note/views/widgets/note_item.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppConstants.kHorizontalPadding,
        ),
        child: Column(
          children: [
            const HomeAppBar(),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(top: 8.0.h),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(bottom: 8.0.h),
                    child: const NoteItem(),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
