import 'package:flutter/material.dart';

class AppBar02 extends StatelessWidget implements PreferredSizeWidget {
  const AppBar02({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      forceMaterialTransparency: false,
      title: Image.asset(
        'assets/images/WilconLogoSmall1.png', // Path to your image asset
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.notifications),
          onPressed: () {
            // Handle bell icon press
            // print('Bell icon pressed');
          },
        ),
        IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {
            // Handle menu icon press
            // print('Menu icon pressed');
            Scaffold.of(context).openEndDrawer();
          },
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
