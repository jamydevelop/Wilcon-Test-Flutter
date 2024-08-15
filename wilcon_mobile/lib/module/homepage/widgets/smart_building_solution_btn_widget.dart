import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/smart_building_solution/presentation/smartbuildingsolution_page.dart';

class SmartBuildingSolutionBtnWidget extends StatefulWidget {
  const SmartBuildingSolutionBtnWidget({super.key});

  @override
  State<SmartBuildingSolutionBtnWidget> createState() =>
      _SmartBuildingSolutionBtnWidgetState();
}

class _SmartBuildingSolutionBtnWidgetState
    extends State<SmartBuildingSolutionBtnWidget> {
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
                  builder: (context) => const SmartBuildingSolutionPage()),
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
                bottom: -22, // Move the icon more to the bottom
                left: -22, // Move the icon more to the left
                child: Opacity(
                  opacity: 0.3,
                  child: Icon(
                    Icons.collections_bookmark, // Background icon
                    size: 90, // Increase size for better visibility
                    color: Colors.white,
                  ),
                ),
              ),
              // Centered content
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.collections_bookmark, // Foreground icon
                      size: 25,
                      color: Colors.white,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Smart Building\n Solution',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4),
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
