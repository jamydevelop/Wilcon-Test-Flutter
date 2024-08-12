import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/meter_readings/meter_body_widget.dart';
import 'package:wilcon_mobile/widgets/appbar_widget.dart';
import 'package:wilcon_mobile/widgets/back_screen_widget.dart';
import 'package:wilcon_mobile/widgets/buttons_widget.dart';
import 'package:wilcon_mobile/widgets/sidebar_widget.dart';
import 'package:wilcon_mobile/widgets/header_bar_widget.dart';

class MeterReadingsPage extends StatefulWidget {
  const MeterReadingsPage({super.key});

  @override
  State<MeterReadingsPage> createState() => _MeterReadingsPageState();
}

class _MeterReadingsPageState extends State<MeterReadingsPage> {
  final ButtonClass buttonClass = ButtonClass();

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
                  child: Column(
                    children: [
                      const CustomizedAppBar(),
                      const BackToPrevScreen(),
                      const HeaderBar(
                        text: 'Meter Readings',
                        isYellow: false,
                      ),
                      const SizedBox(height: 12),
                      buttonClass.filterButton(context),
                      const SizedBox(height: 12),
                    ],
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.symmetric(
                          horizontal:
                              12.0), // Add 12px margin on left and right
                      child: const MeterBodyWidget(), // body: ,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget _meterReadingsPageBody() {
  //   return const Text('This is Meter Readings Page! :)');
  // }
}
