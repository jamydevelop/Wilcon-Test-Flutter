import 'package:flutter/material.dart';
import 'package:wilcon_mobile/widgets/filter_bottom_sheet_widget.dart';

class SavedModalWidget extends StatefulWidget {
  const SavedModalWidget({super.key});

  @override
  State<SavedModalWidget> createState() => _SavedModalWidgetState();
}

class _SavedModalWidgetState extends State<SavedModalWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: const EdgeInsets.all(16),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize
              .min, // Ensure the bottom sheet only takes as much height as needed
          children: [
            Text(
              'Filter',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Example usage of the FilterBottomSheet:
  void showFilterBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled:
          true, // Allows the bottom sheet to be scrollable if necessary
      builder: (BuildContext context) {
        return const FilterBottomSheet();
      },
    );
  }
}
