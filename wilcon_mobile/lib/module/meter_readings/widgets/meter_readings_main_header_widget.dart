import 'package:flutter/material.dart';
import 'package:wilcon_mobile/widgets/buttons_widget.dart';
import 'package:wilcon_mobile/widgets/customized_appbar/cuztomized_appbar_widget.dart';
import 'package:wilcon_mobile/widgets/header_bar_widget.dart';

class MeterReadingsMainHeaderWidget extends StatefulWidget {
  const MeterReadingsMainHeaderWidget({super.key});

  @override
  State<MeterReadingsMainHeaderWidget> createState() =>
      _MeterReadingsMainHeaderWidgetState();
}

class _MeterReadingsMainHeaderWidgetState
    extends State<MeterReadingsMainHeaderWidget> {
  final ButtonClass buttonClass = ButtonClass();
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.zero,
      ),
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          const CuztomizedAppbarWidget(),
          const SizedBox(height: 12),
          const HeaderBar(
            text: 'Meter Readings',
            isYellow: false,
          ),
          const SizedBox(height: 12),
          buttonClass.filterButton(context),
          const SizedBox(height: 12),
        ],
      ),
    );
  }
}
