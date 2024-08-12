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
                  _isExpanded ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                  color: Colors.white, // Icon color
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
              children: _buildRows(),
            ),
            crossFadeState: _isExpanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
          ),
        ],
      ),
    );
  }

  List<Widget> _buildRows() {
    // Example data for rows
    final List<Map<String, String>> rowsData = List.generate(
      5,
      (index) => {'label1': 'Tenant $index', 'label2': 'Henry Quimbao $index'},
    );

    return rowsData.asMap().entries.map((entry) {
      int index = entry.key;
      Map<String, String> rowData = entry.value;
      // Alternate colors based on the index
      Color rowColor = index % 2 == 0 ? Colors.white : Colors.grey[200]!;

      return _buildRow(rowData['label1']!, rowData['label2']!, rowColor);
    }).toList()
      ..add(
        _buildButton(
            rowsData.length % 2 == 0 ? Colors.white : Colors.grey[200]!),
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

  Widget _buildButton(Color backgroundColor) {
    return ElevatedButton.icon(
      onPressed: () {
        // Handle button press
      },
      icon: const Icon(Icons.arrow_forward),
      label: const Text('View Details'),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black,
        backgroundColor: Colors.white, // Set background color to white
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.0), // Set border radius to 4px
          side: BorderSide(
            color: Color(0xFF166E16), // Border color set to #166E16
            width: 2.0, // Border width
          ),
        ),
        padding: EdgeInsets.symmetric(
            vertical: 12.0, horizontal: 16.0), // Optional padding
      ),
    );
  }
}
