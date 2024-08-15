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
              borderRadius:
                  BorderRadius.circular(8), // Removes the rounded corners
            ), // Text color
          ),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.collections_bookmark,
                size: 25,
                color: Colors.white,
              ),
              SizedBox(height: 8),
              Text(
                'Smart Building Solution',
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
      ),
    );
  }
}
