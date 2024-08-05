import 'package:flutter/material.dart';

class ChecklistItems extends StatelessWidget {
  const ChecklistItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        // Determine the text and background color based on index
        String text;
        Color backgroundColor;
        Border? border;

        if (index % 2 == 0) {
          text = "Maintenance Daily Checklist";
          backgroundColor = Colors.white;
        } else {
          text = "Maintenance Weekly Genset Dry Run & Load Testing Checklist";
          backgroundColor = Colors.grey[200]!;
          border = Border(
            top: BorderSide(color: Colors.grey[600]!, width: 1.0),
            bottom: BorderSide(color: Colors.grey[600]!, width: 1.0),
          );
        }

        return GestureDetector(
          onTap: () {
            // Handle item tap
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Clicked on: $text')),
            );
          },
          child: Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 12.0), // Add margin here
            decoration: BoxDecoration(
              border: border, // Apply border only if it's not null
            ),
            child: Container(
              padding: const EdgeInsets.all(16.0),
              color: backgroundColor,
              child: Text(
                text,
                style: const TextStyle(fontSize: 16),
              ),
            ),
          ),
        );
      },
    );
  }
}
