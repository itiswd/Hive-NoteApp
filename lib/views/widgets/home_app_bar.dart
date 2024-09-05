import 'package:flutter/material.dart';
import 'package:hive_note/core/app_styles.dart';
import 'package:hive_note/views/widgets/main_search_button.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Notes',
          style: AppStyles.header,
        ),
        const Spacer(),
        const MainSearchButton(),
      ],
    );
  }
}
