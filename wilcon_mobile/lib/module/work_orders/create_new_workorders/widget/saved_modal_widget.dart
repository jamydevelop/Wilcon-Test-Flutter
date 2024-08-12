import 'package:flutter/material.dart';

class SavedModalWidget extends StatelessWidget {
  const SavedModalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      child: const Column(
        mainAxisSize: MainAxisSize
            .min, // Ensure the bottom sheet only takes as much height as needed
        children: [
          Icon(
            Icons.check_circle,
            color: Colors.green,
            size: 60,
          ),
          SizedBox(height: 16),
          Text(
            'Saved!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center, // Center-align text
          ),
          SizedBox(height: 8),
          Text(
            'Your data has been successfully saved.',
            style: TextStyle(
              fontSize: 16,
              color: Colors.black,
            ),
            textAlign: TextAlign.center, // Center-align text
          ),
          SizedBox(height: 24),
        ],
      ),
    );
  }
}

// Function to show the SavedModalWidget
void showSavedModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    isScrollControlled:
        true, // Allows the bottom sheet to be scrollable if necessary
    builder: (BuildContext context) {
      return const SavedModalWidget();
    },
  );
}
