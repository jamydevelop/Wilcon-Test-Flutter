import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/notifications/widgets/notification_card_widget.dart';

class NotificationBodyWidget extends StatefulWidget {
  const NotificationBodyWidget({super.key});

  @override
  State<NotificationBodyWidget> createState() => _NotificationBodyWidgetState();
}

class _NotificationBodyWidgetState extends State<NotificationBodyWidget> {
  @override
  Widget build(BuildContext context) {
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
          child: const NotificationCardWidget(),
        );
      },
    );
  }
}
