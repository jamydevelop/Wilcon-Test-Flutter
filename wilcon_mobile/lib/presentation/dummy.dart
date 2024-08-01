import 'package:flutter/material.dart';

class DummyWidget extends StatefulWidget {
  const DummyWidget({super.key});

  @override
  State<DummyWidget> createState() => _DummyWidgetState();
}

class _DummyWidgetState extends State<DummyWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView.builder(
          padding: const EdgeInsets.only(
              left: 16.0, right: 16.0, bottom: 16.0), // Removed top padding
          itemCount: 15, // Number of cards to display
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 0.0), // Space between cards
              decoration: BoxDecoration(
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
                shape: RoundedRectangleBorder(
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
                        Icons
                            .more_vert_rounded, // Replace with any icon you like
                        color: Colors.black,
                        size: 24.0,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
