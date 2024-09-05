import 'package:flutter/material.dart';
import 'package:hive_note/core/app_constants.dart';
import 'package:hive_note/views/widgets/home_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: AppConstants.kHorizontalPadding,
        ),
        child: const Column(
          children: [HomeAppBar()],
        ),
      ),
    );
  }
}
