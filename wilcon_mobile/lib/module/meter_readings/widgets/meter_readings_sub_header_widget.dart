import 'package:flutter/material.dart';
import 'package:wilcon_mobile/widgets/customized_appbar/cuztomized_appbar_widget.dart';
import 'package:wilcon_mobile/widgets/header_bar_widget.dart';

class MeterReadingsSubHeaderWidget extends StatefulWidget {
  const MeterReadingsSubHeaderWidget({super.key});

  @override
  State<MeterReadingsSubHeaderWidget> createState() =>
      _MeterReadingsSubHeaderWidgetState();
}

class _MeterReadingsSubHeaderWidgetState
    extends State<MeterReadingsSubHeaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      padding: const EdgeInsets.all(12.0), // Padding inside the container
      child: const Column(
        children: [
          CuztomizedAppbarWidget(), // Removed const
          SizedBox(height: 12),
          HeaderBar(
            text: 'Meter Readings',
            isYellow: false,
          ),
          SizedBox(height: 12),
          //buttonClass.filterButton(context),
          //SizedBox(height: 12),
        ],
      ),
    );
  }
}
