import 'package:flutter/material.dart';
import 'package:wilcon_mobile/presentation/screens/notificationspage/notifications_page.dart';

class CustomizedAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  const CustomizedAppBar({super.key, this.height = kToolbarHeight});

  @override
  Size get preferredSize => Size.fromHeight(height);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 24),
        _wilconAppBar(context),
      ],
    );
  }

  Widget _wilconAppBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 0.0),
      //color: Colors.blue, // Change to your preferred color
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(
            'assets/images/WilconLogoSmall1.png', // Path to your image asset
          ),
          // Add a Spacer to push icons to the end
          Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.notifications, color: Colors.black),
                  onPressed: () {
                    debugPrint("Notifications Pressed!");
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotificationsPage(),
                      ),
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.black),
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer(); // Open the drawer
                    debugPrint("Menu Icon pressed!");
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
