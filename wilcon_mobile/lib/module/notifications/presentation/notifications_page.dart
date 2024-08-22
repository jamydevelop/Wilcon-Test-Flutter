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
    return const Scaffold(
      endDrawer:
          CustomSidebar(), // Make sure this is not const if it is not a const constructor
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              NotificationAppbarContainerWidget(),
              Expanded(
                  child:
                      NotificationBodyWidget()), // Use Expanded to fill remaining space
            ],
          ),
        ),
      ),
    );
  }
}
