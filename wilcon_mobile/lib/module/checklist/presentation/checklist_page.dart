import 'package:flutter/material.dart';
import 'package:wilcon_mobile/widgets/appbar_widget.dart';
import 'package:wilcon_mobile/widgets/back_screen_widget.dart';
import 'package:wilcon_mobile/widgets/sidebar_widget.dart';
import 'package:wilcon_mobile/widgets/header_bar_widget.dart';

class ChecklistPage extends StatefulWidget {
  const ChecklistPage({super.key});

  @override
  State<ChecklistPage> createState() => _ChecklistPageState();
}

class _ChecklistPageState extends State<ChecklistPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(
      child: Scaffold(
        endDrawer: CustomSidebar(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(height: 24),
              CustomizedAppBar(),
              BackToPrevScreen(),
              HeaderBar(
                text: 'Create Checklist',
                isYellow: true,
              ),
            ],
          ),
        ),
      ),
    ));
  }

  // Widget _checklistPageBody() {
  //   return const Text('This is CheckList Page! :)');
  // }
}
