import 'package:flutter/material.dart';

class QrCodeWidget extends StatelessWidget {
  const QrCodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black, // Set the background color to black
      child: const Center(
        child: Text(
          'QR Code Camera Here',
          style: TextStyle(
            color: Colors.white, // Set text color to white for better contrast
            fontSize: 24, // Set font size for better visibility
          ),
        ),
      ),
    );
  }
}
