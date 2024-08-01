import 'package:flutter/material.dart';
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
              const HeaderBar(text: 'Notifications'),
              const SizedBox(height: 24),
              //const SizedBox(height: 12),

              Container(
                height: 12,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                          .withOpacity(0.3), // Shadow color with opacity
                      offset: const Offset(0, 4), // Shadow position
                      blurRadius: 6, // Shadow blur radius
                    ),
                  ],
                ),
              ),

              Expanded(
                  child:
                      _notificationBody()), // Use Expanded to fill remaining space
            ],
          ),
        ),
      ),
    );
  }

  Widget _notificationBody() {
    return ListView.builder(
      padding: const EdgeInsets.only(
          left: 0.0, right: 0.0, bottom: 16.0), // Adjusted padding
      itemCount: 15, // Number of cards to display
      itemBuilder: (context, index) {
        return Container(
          margin: const EdgeInsets.only(bottom: 0.0), // Space between cards
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey, // Bottom border color
                width: 1.0, // Border width
              ),
            ),
          ),
          child: Card(
            margin: EdgeInsets.zero, // Remove any external margin
            elevation: 0.0, // Remove card shadow
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero, // Sharp edges
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          DateTime.now()
                              .toLocal()
                              .toString(), // Full date and time
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16.0), // Space between columns
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Maintenance Daily Checklist',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(
                    Icons.more_vert_rounded, // Replace with any icon you like
                    color: Colors.black,
                    size: 24.0,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
