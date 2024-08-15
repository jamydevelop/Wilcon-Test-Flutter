import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/work_orders/my_work_orders/presentation/my_work_orders_page.dart';

class MyWorkOrdersBtnWidget extends StatefulWidget {
  const MyWorkOrdersBtnWidget({super.key});

  @override
  State<MyWorkOrdersBtnWidget> createState() => _MyWorkOrdersBtnWidgetState();
}

class _MyWorkOrdersBtnWidgetState extends State<MyWorkOrdersBtnWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 104,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const MyWorkOrders()),
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
                bottom: -12, // Move the icon more to the bottom
                left: -14, // Move the icon more to the left
                child: Opacity(
                  opacity: 0.3,
                  child: Icon(
                    Icons.work, // Background icon
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
                      Icons.work, // Foreground icon
                      size: 25,
                      color: Colors.white,
                    ),
                    SizedBox(height: 8),
                    Text(
                      'My Work Orders',
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
