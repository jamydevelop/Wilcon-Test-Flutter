import 'package:flutter/material.dart';

class HeaderUserWidget extends StatefulWidget {
  const HeaderUserWidget({super.key});

  @override
  State<HeaderUserWidget> createState() => _HeaderUserWidgetState();
}

class _HeaderUserWidgetState extends State<HeaderUserWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.blue,
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.only(right: 24.0),
            child: const CircleAvatar(
              radius: 20.0, // 40px diameter / 2 = 20px radius
              backgroundImage: AssetImage(
                  'assets/images/avatar.png'), // Replace with your image asset path
            ),
          ),
          const Text(
            'Welcome, Jhemmy!',
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
