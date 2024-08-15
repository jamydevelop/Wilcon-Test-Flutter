import 'package:flutter/material.dart';

class QrButton extends StatefulWidget {
  const QrButton({super.key});

  @override
  State<QrButton> createState() => _QrButtonState();
}

class _QrButtonState extends State<QrButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double
          .infinity, // Make the button take the full width of its container
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.white,
          backgroundColor:
              const Color(0xFF166E16), // Set the text color to white
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(4.0), // Set the border radius to 4px
          ),
          padding: const EdgeInsets.symmetric(
              vertical: 16.0), // Optional: adjust padding for better appearance
        ),
        child: const Text('Scan QR Code'),
      ),
    );
  }
}
