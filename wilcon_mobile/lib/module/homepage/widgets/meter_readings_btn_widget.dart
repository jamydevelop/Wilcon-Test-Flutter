import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/meter_readings/presentation/meter_readings_main_page.dart';

class MeterReadingsBtnWidget extends StatefulWidget {
  const MeterReadingsBtnWidget({super.key});

  @override
  State<MeterReadingsBtnWidget> createState() => _MeterReadingsBtnWidgetState();
}

class _MeterReadingsBtnWidgetState extends State<MeterReadingsBtnWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 104,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const MeterReadingsPage()),
            );
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromRGBO(22, 110, 22, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Rounded corners
            ),
            padding: EdgeInsets.zero, // Remove padding to use Stack properly
          ),
          child: const Stack(
            children: [
              // Background icon
              Positioned(
                bottom: -12, // Move the icon more to the bottom
                left: -14, // Move the icon more to the left
                child: Opacity(
                  opacity: 0.3,
                  child: Icon(
                    Icons.electric_meter_sharp, // Background icon
                    size: 83, // Increase size for better visibility
                    color: Colors.white,
                  ),
                ),
              ),
              // Centered content
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.electric_meter_sharp, // Foreground icon
                      size: 25,
                      color: Colors.white,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Meter Readings',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Tap to like',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
