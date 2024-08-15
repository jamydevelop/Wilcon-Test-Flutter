import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/meter_readings/widgets/meter_readings_sub_body_widget.dart';
import 'package:wilcon_mobile/module/meter_readings/widgets/meter_readings_sub_header_widget.dart';
import 'package:wilcon_mobile/widgets/sidebar_widget.dart';

class MeterReadingsSubPage extends StatefulWidget {
  const MeterReadingsSubPage({super.key});

  @override
  State<MeterReadingsSubPage> createState() => _MeterReadingsSubPageState();
}

class _MeterReadingsSubPageState extends State<MeterReadingsSubPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Scaffold(
          endDrawer: CustomSidebar(), // Removed const
          body: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: 0.0), // Remove left and right padding
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                MeterReadingsSubHeaderWidget(),
                MeterReadingsSubBodyWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
