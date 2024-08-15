import 'package:flutter/material.dart';
import 'meter_card_container_widget.dart'; // Adjust import path if needed

class MeterMoreDetailsWidget extends StatelessWidget {
  const MeterMoreDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
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
                'This place only placeholder. 3 or more sentences only. Input here.',
              ),
              Colors.grey[200]!,
            ),
            _saveButton(),
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
        image: AssetImage('assets/images/WilconLogoSmall1.png'),
        fit: BoxFit.cover,
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

  Widget _saveButton() {
    return Container(
      margin: const EdgeInsets.all(12.0), // Margin around the button
      color: Colors.white, // Set the container color to white
      child: SizedBox(
        width: double.infinity,
        child: ElevatedButton(
          onPressed: () {
            // Handle button press
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF166E16), // Button background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
            padding:
                const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
            elevation: 0,
          ),
          child: const Text(
            'Save',
            style: TextStyle(color: Colors.white), // Button text color
          ),
        ),
      ),
    );
  }

  Widget _buildNewReadingTextField() {
    return const TextField(
      decoration: InputDecoration(
        hintText: 'Input here new reading',
        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      ),
    );
  }

  Widget _buildDatePicker(BuildContext context) {
    TextEditingController dateController = TextEditingController();

    return TextField(
      controller: dateController,
      readOnly: true,
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
              dateController.text = "${selectedDate.toLocal()}".split(' ')[0];
            }
          },
        ),
        border: const OutlineInputBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey, width: 1.0),
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      ),
    );
  }
}
