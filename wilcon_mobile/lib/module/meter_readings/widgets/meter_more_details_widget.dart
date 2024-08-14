import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/meter_readings/widgets/meter_card_container_widget.dart';
// Import the MeterCardDetails class

class MeterMoreDetailsWidget extends StatelessWidget {
  const MeterMoreDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: MeterCardContainerWidget(
        header: 'Meter #24335',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildRow('Tenant', const Text('Henry Quimbao'), Colors.white),
            _buildRow('Last Reading', const Text('232 cUm'), Colors.grey[200]!),
            _buildRow('Reading Date', _buildDatePicker(context), Colors.white),
            Divider(height: 2.0, color: Colors.grey[200]!),
            _buildRow('New Reading', _buildNewReadingTextField(), Colors.white),
            _buildRow('Billing', const Text('232 cUm'), Colors.grey[200]!),
            _buildRow('File/Photo', _imgSample(), Colors.white),
            _buildRow(
                'Notes',
                const Text(
                    'This place only placeholder. 3 or more sentences only. Input here.'),
                Colors.grey[200]!),
            Container(
              color: Colors.white,
              margin: const EdgeInsets.all(12.0),
              child: ElevatedButton.icon(
                onPressed: () {
                  // Handle button press
                },
                icon: const Icon(Icons.arrow_forward, color: Color(0xFF166E16)),
                label: const Text('View Details'),
                style: ElevatedButton.styleFrom(
                  foregroundColor: const Color(0xFF166E16),
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0),
                    side: const BorderSide(
                      color: Color(0xFF166E16),
                      width: 2.0,
                    ),
                  ),
                  padding: const EdgeInsets.symmetric(
                      vertical: 12.0, horizontal: 16.0),
                  elevation: 0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _imgSample() {
    return const SizedBox(
      width: 52.0,
      height: 52.0,
      child: Image(
        //image: AssetImage('assets/images/samplePic1.png'),
        image: AssetImage('assets/images/WilconLogoSmall1.png'),
        fit: BoxFit.cover, // Ensure the image covers the box
      ),
    );
  }

  Widget _buildRow(String label1, Widget widget2, Color backgroundColor) {
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
              child: widget2,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildNewReadingTextField() {
    return const TextField(
      decoration: InputDecoration(
        // labelText: 'New Reading',
        hintText: 'Input here new reading',
        border: OutlineInputBorder(), // Adds a border around the TextField
        focusedBorder: OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.blue, width: 2.0), // Border when focused
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.grey, width: 1.0), // Border when not focused
        ),
        contentPadding: EdgeInsets.symmetric(
            horizontal: 16.0, vertical: 12.0), // Adjust padding as needed
      ),
    );
  }

  Widget _buildDatePicker(BuildContext context) {
    TextEditingController dateController = TextEditingController();

    return TextField(
      controller: dateController,
      readOnly: true, // Makes the TextField non-editable
      decoration: InputDecoration(
        labelText: 'Date',
        suffixIcon: IconButton(
          icon: const Icon(Icons.calendar_today),
          onPressed: () async {
            DateTime? selectedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2101),
            );
            if (selectedDate != null) {
              // Format the date and set it to the TextField
              dateController.text =
                  "${selectedDate.toLocal()}".split(' ')[0]; // Format as needed
            }
          },
        ),
        border:
            const OutlineInputBorder(), // Adds a border around the TextField
        focusedBorder: const OutlineInputBorder(
          borderSide:
              BorderSide(color: Colors.blue, width: 2.0), // Border when focused
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.grey, width: 1.0), // Border when not focused
        ),
        contentPadding: const EdgeInsets.symmetric(
            horizontal: 16.0, vertical: 12.0), // Adjust padding as needed
      ),
    );
  }
}
