import 'package:flutter/material.dart';

class ChecklistDetailBodyPage extends StatefulWidget {
  const ChecklistDetailBodyPage({super.key});

  @override
  State<ChecklistDetailBodyPage> createState() =>
      _ChecklistDetailBodyPageState();
}

class _ChecklistDetailBodyPageState extends State<ChecklistDetailBodyPage> {
  bool _isChecked = false; // State variable for the checkbox
  final TextEditingController _remarksController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Card(
          margin: EdgeInsets.zero, // Remove default margin of the Card
          child: Column(
            children: [
              const SizedBox(height: 12),
              _detailsPageHeader(),
              _temporaryBody()
            ],
          ),
        ),
      ),
    );
  }

  Widget _temporaryBody() {
    return Container(
      color: const Color(0xFFD0D0D0), // Neutral-300 color
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Main Electric Meter Reading',
                style: TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold),
              ),
              Checkbox(
                value: _isChecked,
                onChanged: (bool? value) {
                  setState(() {
                    _isChecked = value ?? false;
                  });
                },
              ),
            ],
          ),
          TextField(
            controller: _remarksController,
            decoration: const InputDecoration(
              hintText: 'Type here',
              border: OutlineInputBorder(),
              contentPadding:
                  EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _detailsPageHeader() {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFF15422B), // Header color
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(4.0),
          topRight: Radius.circular(4.0),
        ),
      ),
      padding: const EdgeInsets.all(16.0),
      child: const Text(
        'Electrical system.',
        style: TextStyle(
          color: Colors.white, // Text color
          fontSize: 18.0, // Text size
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
