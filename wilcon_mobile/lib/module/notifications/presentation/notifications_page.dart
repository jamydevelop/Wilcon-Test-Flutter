import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/notifications/widgets/notification_body_widget.dart';
import 'package:wilcon_mobile/widgets/appbar_widget.dart';
import 'package:wilcon_mobile/widgets/back_screen_widget.dart';
import 'package:wilcon_mobile/widgets/sidebar_widget.dart';
import 'package:wilcon_mobile/widgets/header_bar_widget.dart';

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
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 24),
              const CustomizedAppBar(),
              const BackToPrevScreen(),
              const HeaderBar(
                text: 'Notifications',
                isYellow: false,
              ),
              const SizedBox(height: 24),
              //const SizedBox(height: 12),

              Container(
                height: 12,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(0.3), // Shadow color with opacity
                      offset: const Offset(1, 0), // Shadow position
                      blurRadius: 6, // Shadow blur radius
                    ),
                  ],
                ),
              ),

              const Expanded(
                  child:
                      NotificationBodyWidget()), // Use Expanded to fill remaining space
            ],
          ),
        ),
      ),
    );
  }
}
