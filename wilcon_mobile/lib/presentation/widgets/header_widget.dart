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
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 16.0, // Set text size to 16 pixels
          fontWeight: FontWeight.w700, // Set text weight to 700
        ),
      ),
    );
  }
}
