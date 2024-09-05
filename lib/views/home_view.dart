import 'package:flutter/material.dart';
import 'package:hive_note/views/widgets/custom_floating_action_button.dart';
import 'package:hive_note/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      floatingActionButton: CustomFloatingActionButton(),
      body: HomeViewBody(),
    );
  }
}
