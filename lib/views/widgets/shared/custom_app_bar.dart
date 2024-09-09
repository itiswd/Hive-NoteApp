import 'package:flutter/material.dart';
import 'package:hive_note/core/app_styles.dart';
import 'package:hive_note/views/widgets/shared/custom_appbar_button.dart';

class CustomAppBar extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function()? onTap;
  const CustomAppBar({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: AppStyles.header,
        ),
        const Spacer(),
        CustomAppbarButton(
          onTap: onTap,
          icon: icon,
        ),
      ],
    );
  }
}
