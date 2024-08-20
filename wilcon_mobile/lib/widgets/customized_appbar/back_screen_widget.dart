import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/homepage/presentation/home_page.dart';

class BackToPrevScreen extends StatelessWidget {
  const BackToPrevScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.transparent,
      padding: const EdgeInsets.only(
          top: 14.0, left: 12.0, right: 12.0), // Removed bottom padding
      child: InkWell(
        onTap: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const Homepage()),
          ); // Navigate to the previous page
        },
        child: const Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            SizedBox(width: 8.0),
            Text(
              "Back",
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
