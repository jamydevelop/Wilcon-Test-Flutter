import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/meter_readings/widgets/meter_more_details_widget.dart';

class MeterReadingsSubBodyWidget extends StatefulWidget {
  const MeterReadingsSubBodyWidget({super.key});

  @override
  State<MeterReadingsSubBodyWidget> createState() =>
      _MeterReadingsSubBodyWidgetState();
}

class _MeterReadingsSubBodyWidgetState
    extends State<MeterReadingsSubBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
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
    );
  }
}
