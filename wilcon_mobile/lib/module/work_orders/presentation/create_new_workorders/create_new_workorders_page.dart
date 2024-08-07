import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/checklist/presentation/widget/four_buttons_example_widget.dart';
import 'package:wilcon_mobile/module/work_orders/presentation/create_new_workorders/widget/create_new_workorders_body_widget.dart';
import 'package:wilcon_mobile/widgets/appbar_widget.dart';
import 'package:wilcon_mobile/widgets/back_screen_widget.dart';
import 'package:wilcon_mobile/widgets/header_bar_widget.dart';
import 'package:wilcon_mobile/widgets/sidebar_widget.dart';

class CreateNewWorkordersPage extends StatefulWidget {
  const CreateNewWorkordersPage({super.key});

  @override
  State<CreateNewWorkordersPage> createState() =>
      _CreateNewWorkordersPageState();
}

class _CreateNewWorkordersPageState extends State<CreateNewWorkordersPage> {
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
                        text: 'Create New Work Order',
                        isYellow: true,
                      ),
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
                  child: CreateNewWorkordersBodyWidget(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}
