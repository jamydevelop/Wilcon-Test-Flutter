import 'package:flutter/material.dart';

class TicketHeader extends StatelessWidget {
  final String text;

  const TicketHeader({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 12.0),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(21, 66, 43, 1), //21, 66, 43
        borderRadius: BorderRadius.circular(8.0), // Adjust the radius as needed
      ),
      child: text == "Notifications"
          ? Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, // Distribute space between widgets
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16.0, // Font size for "Notifications" text
                    fontWeight: FontWeight.w700, // Font weight
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFDDDD3), // Background color #FDDDD3
                    borderRadius:
                        BorderRadius.circular(12.0), // Rounded corners
                  ),
                  child: const Text(
                    '4 New Notifications', // Replace with actual text if needed
                    style: TextStyle(
                      color: Color(0xFF61220F), // Text color #61220F
                      fontSize: 12.0, // Font size for additional text
                      fontWeight: FontWeight.w700, // Font weight
                    ),
                  ),
                ),
              ],
            )
          : Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0, // Font size for general text
                fontWeight: FontWeight.w700, // Font weight
              ),
            ),
    );
  }
}
