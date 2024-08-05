import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/checklist/presentation/widget/checklist_items_data.dart';
import 'package:wilcon_mobile/module/checklist/presentation/widget/four_buttons_example_widget.dart';
import 'package:wilcon_mobile/widgets/appbar_widget.dart';
import 'package:wilcon_mobile/widgets/back_screen_widget.dart';
import 'package:wilcon_mobile/widgets/search_bar_widget.dart';
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
    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          endDrawer: const CustomSidebar(),
          body: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 0.0), // Remove left and right padding
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1), // Shadow color
                        spreadRadius: 2, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: const Offset(0, 3), // Shadow position
                      ),
                    ],
                    borderRadius: BorderRadius.zero, // Remove rounded corners
                  ),
                  padding: const EdgeInsets.all(
                      12.0), // Padding inside the container
                  child: const Column(
                    children: [
                      CustomizedAppBar(),
                      BackToPrevScreen(),
                      HeaderBar(
                        text: 'Create Checklist',
                        isYellow: true,
                      ),
                      SizedBox(height: 12),
                      SearchBarWidget(hintText: 'Search'),
                      SizedBox(height: 12),
                      SizedBox(height: 24),
                      FourButtonsExample(),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Input simple instruction here. Make it short.',
                          style: TextStyle(
                            fontFamily: 'OpenSans',
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            height: 20 / 14, // line-height / font-size
                            letterSpacing: 0.001,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  child:
                      ChecklistItems(), // Using a separate widget for the list
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
