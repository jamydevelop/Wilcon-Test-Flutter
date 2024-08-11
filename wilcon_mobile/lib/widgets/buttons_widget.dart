import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/work_orders/create_new_workorders/create_new_workorders_page.dart';

import 'package:wilcon_mobile/widgets/filter_bottom_sheet_widget.dart';

class ButtonClass {
  Widget createNewButton(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 44, // Set the height to 44 pixels
        child: ElevatedButton(
          onPressed: () {
            // Action for button one
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const CreateNewWorkordersPage()),
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
    return SizedBox(
      width: double.infinity, // Make the button take all available width space
      child: SizedBox(
        height: 44, // Set the height to 44 pixels
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return const SizedBox(
                  height: 521,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        FilterBottomSheet(),
                      ],
                    ),
                  ),
                );
              },
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
