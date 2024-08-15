import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/meter_readings/widgets/meter_more_details_widget.dart';
import 'package:wilcon_mobile/widgets/appbar_widget.dart';
import 'package:wilcon_mobile/widgets/back_screen_widget.dart';
import 'package:wilcon_mobile/widgets/header_bar_widget.dart';
import 'package:wilcon_mobile/widgets/sidebar_widget.dart';

class MeterReadingsSubPage extends StatefulWidget {
  const MeterReadingsSubPage({super.key});

  @override
  State<MeterReadingsSubPage> createState() => _MeterReadingsSubPageState();
}

class _MeterReadingsSubPageState extends State<MeterReadingsSubPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          endDrawer: const CustomSidebar(), // Removed const
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
                      CustomizedAppBar(), // Removed const
                      BackToPrevScreen(), // Removed const
                      HeaderBar(
                        text: 'Meter Readings',
                        isYellow: false,
                      ),
                      SizedBox(height: 12),
                      //buttonClass.filterButton(context),
                      //SizedBox(height: 12),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        //const MeterMoreDetailsWidget(),
                        Container(
                          margin: const EdgeInsets.only(
                            left: 12.0,
                            right: 12.0,
                            top: 12.0,
                            bottom: 0.0, // Remove vertical margin at the bottom
                          ),
                          child: const Column(
                            children: [
                              MeterMoreDetailsWidget(),
                              MeterMoreDetailsWidget(),
                              MeterMoreDetailsWidget(),
                            ],
                          ),
                        ),
                      ],
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
}
