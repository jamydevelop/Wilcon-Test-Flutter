import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/notifications/widgets/notification_appbar_container_widget.dart';
import 'package:wilcon_mobile/module/notifications/widgets/notification_body_widget.dart';
import 'package:wilcon_mobile/widgets/sidebar_widget.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({super.key});

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer:
          const CustomSidebar(), // Make sure this is not const if it is not a const constructor
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            const Material(
              elevation: 4.0, // Adjust elevation for the floating effect
              shadowColor: Colors.black45, // Optional: To control shadow color
              child: NotificationAppbarContainerWidget(),
            ),
            const SizedBox(
              height: 12,
            ),
            Expanded(
              child: Card(
                margin: const EdgeInsets.all(0),
                color: Colors.white,
                elevation: 1.0, // Adjust the elevation value as needed
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
                child: const NotificationBodyWidget(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
