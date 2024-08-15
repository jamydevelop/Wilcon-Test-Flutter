import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/my_pm_tickets/presentation/my_pm_ticket_page.dart';

class MyPmTicketsBtnWidget extends StatefulWidget {
  const MyPmTicketsBtnWidget({super.key});

  @override
  State<MyPmTicketsBtnWidget> createState() => _MyPmTicketsBtnWidgetState();
}

class _MyPmTicketsBtnWidgetState extends State<MyPmTicketsBtnWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 104,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MyPMTickets()),
            );
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromRGBO(22, 110, 22, 1),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8), // Rounded corners
            ),
            padding: EdgeInsets.zero, // Remove padding to use Stack properly
          ),
          child: const Stack(
            children: [
              // Background icon
              Positioned(
                bottom: -14, // Move the icon more to the bottom
                left: -14, // Move the icon more to the left
                child: Opacity(
                  opacity: 0.3,
                  child: Icon(
                    Icons.folder, // Background icon
                    size: 83, // Increase size for better visibility
                    color: Colors.white,
                  ),
                ),
              ),
              // Centered content
              Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.folder, // Foreground icon
                      size: 25,
                      color: Colors.white,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'My PM Tickets',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      'Tap to like',
                      style: TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
