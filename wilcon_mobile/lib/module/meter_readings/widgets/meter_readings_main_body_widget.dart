import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/meter_readings/widgets/meter_card_body_widget.dart';

class MeterReadingsMainBodyWidget extends StatefulWidget {
  const MeterReadingsMainBodyWidget({super.key});

  @override
  State<MeterReadingsMainBodyWidget> createState() =>
      _MeterReadingsMainBodyWidgetState();
}

class _MeterReadingsMainBodyWidgetState
    extends State<MeterReadingsMainBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                left: 12.0,
                right: 12.0,
                top: 12.0,
                bottom: 0.0, // Remove vertical margin at the bottom
              ),
              child: const Column(
                children: [
                  MeterCardBodyWidget(),
                  MeterCardBodyWidget(),
                  MeterCardBodyWidget(),
                  MeterCardBodyWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
