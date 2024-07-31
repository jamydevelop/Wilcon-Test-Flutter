import 'package:flutter/material.dart';
import 'package:wilcon_mobile/presentation/widgets/appbar_01.dart';
import 'package:wilcon_mobile/presentation/widgets/back_screen_widget.dart';
import 'package:wilcon_mobile/presentation/widgets/custom_drawer.dart';
import 'package:wilcon_mobile/presentation/widgets/header_widget.dart';

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
        endDrawer: CustomDrawer(),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              AppBar01Class(),
              BackToPrevScreen(),
              TicketHeader(text: 'Saved Checklist'),
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
