import 'package:flutter/material.dart';

class ButtonClass {
  Widget createNewButton(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 44, // Set the height to 44 pixels
        child: ElevatedButton(
          onPressed: () {
            // Action for button one
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Button One Pressed')),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFFFACE17), // Change button color
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(8), // Decrease rounded corners
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.add_circle,
                  color: Color(0xFF15422B)), // Plus icon color
              SizedBox(width: 8), // Optional spacing between icon and text
              Text(
                'Create New',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF15422B), // Text color
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget filterButton(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 44, // Set the height to 44 pixels
        child: ElevatedButton(
          onPressed: () {
            // Action for button one
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('Button One Pressed')),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:
                const Color(0xFF166E16), // Change button background color
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(8), // Decrease rounded corners
            ),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.filter_list, color: Colors.white), // Icon color
              SizedBox(width: 8), // Optional spacing between icon and text
              Text(
                'Filter',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white, // Text color
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
