import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/meter_readings/widgets/meter_readings_main_body_widget.dart';
import 'package:wilcon_mobile/module/meter_readings/widgets/meter_readings_main_header_widget.dart';
import 'package:wilcon_mobile/widgets/sidebar_widget.dart';

class MeterReadingsPage extends StatefulWidget {
  const MeterReadingsPage({super.key});

  @override
  State<MeterReadingsPage> createState() => _MeterReadingsPageState();
}

class _MeterReadingsPageState extends State<MeterReadingsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Scaffold(
          endDrawer: CustomSidebar(),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                MeterReadingsMainHeaderWidget(),
                MeterReadingsMainBodyWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
