import 'package:flutter/material.dart';

class AppBar03 extends StatelessWidget implements PreferredSizeWidget {
  const AppBar03({super.key});

  @override
  Size get preferredSize =>
      const Size.fromHeight(80.0); // Adjust height as needed

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 80.0, // Height to accommodate padding and contents
      backgroundColor: Colors.transparent, // Change to your preferred color
      flexibleSpace: const Padding(
        padding: EdgeInsets.fromLTRB(12.0, 48.0, 12.0, 24.0), // Padding
        child: Row(
          children: [
            Image(
              image: AssetImage('assets/images/WilconLogoSmall1.png'),
              fit: BoxFit.cover,
            ),
            //Image.asset('assets/logo.png', height: 40.0), // Your logo image
            Spacer(), // Spacer to push icons to the right
            Icon(Icons.notifications, size: 28.0),
            SizedBox(width: 16.0), // Space between icons
            Icon(Icons.menu, size: 28.0),
          ],
        ),
      ),
    );
  }
}
