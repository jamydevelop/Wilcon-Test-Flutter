import 'package:flutter/material.dart';

class MeterBodyWidget extends StatefulWidget {
  const MeterBodyWidget({super.key});

  @override
  State<MeterBodyWidget> createState() => _MeterBodyWidgetState();
}

class _MeterBodyWidgetState extends State<MeterBodyWidget> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Column(
        children: <Widget>[
          Container(
            color: const Color(0xFF15422B), // Header background color
            child: ListTile(
              title: const Text(
                'Meter #24335',
                style: TextStyle(color: Colors.white), // Header text color
              ),
              trailing: IconButton(
                icon: Icon(
                  _isExpanded
                      ? Icons.keyboard_arrow_up_sharp
                      : Icons.keyboard_arrow_down,
                  color: const Color(0xFFDCB40D), // Arrow icon color
                ),
                onPressed: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
              ),
            ),
          ),
          AnimatedCrossFade(
            duration: const Duration(milliseconds: 300),
            firstChild: Container(),
            secondChild: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildRow('Tenant', 'Henry Quimbao', Colors.white),
                _buildRow('Last Reading', '232 cUm', Colors.grey[200]!),
                Container(
                  color: Colors.white,
                  child: _buildButton(),
                ),
              ],
            ),
            crossFadeState: _isExpanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
          ),
        ],
      ),
    );
  }

  Widget _buildRow(String label1, String label2, Color backgroundColor) {
    return Container(
      color: backgroundColor,
      child: Row(
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(label1),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(label2),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildButton() {
    return Container(
      color: Colors.white, // Background color of the button container
      margin: const EdgeInsets.all(12.0), // Margin of 12px on all sides
      child: ElevatedButton.icon(
        onPressed: () {
          // Handle button press
        },
        icon:
            const Icon(Icons.arrow_forward, color: Colors.black), // Icon color
        label: const Text('View Details'),
        style: ElevatedButton.styleFrom(
          foregroundColor: Colors.black, // Text color
          backgroundColor: Colors.white, // Button background color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(4.0), // Border radius
            side: const BorderSide(
              color: Color(0xFF166E16), // Border color
              width: 2.0, // Border width
            ),
          ),
          padding: const EdgeInsets.symmetric(
              vertical: 12.0, horizontal: 16.0), // Padding inside the button
          elevation: 0, // Ensure no elevation
        ),
      ),
    );
  }
}
