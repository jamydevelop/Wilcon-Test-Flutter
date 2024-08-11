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
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            children: [
              const SizedBox(height: 12),
              _detailsPageHeader(),
              _mainElectricMeterReading(),
              _searchDivider(),
              _checkMainDistributionPanel(),
              _searchDivider(),
              _checkElectricalRoom(),
              _searchDivider(),
              const SizedBox(height: 12),
              _commentTextField(),
              const SizedBox(height: 12),
              _searchDivider(),
              const SizedBox(height: 12),
              cancelTicketButton(context),
              const SizedBox(height: 12),
              saveTicketButton(context),
              const SizedBox(height: 36),
            ],
          ),
        ),
      ),
    );
  }

  Widget saveTicketButton(BuildContext context) {
    return SizedBox(
      height: 44, // Set the height to 44 pixels
      child: ElevatedButton(
        onPressed: () {
          // Action for button
          // Navigator.pushReplacement(
          //   context,
          //   MaterialPageRoute(
          //       builder: (context) => const ListOfChecklistPage()),
          // );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor:
              const Color(0xFF166E16), // Change button color to #166E16
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Rounded corners
          ),
        ),
        child: const Center(
          child: Text(
            'Save',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFFF4F7FA), // Change text color to #F4F7FA
            ),
          ),
        ),
      ),
    );
  }

  Widget cancelTicketButton(BuildContext context) {
    return SizedBox(
      height: 44, // Set the height to 44 pixels
      child: OutlinedButton(
        onPressed: () {
          // Action for button
          // Navigator.pushReplacement(
          //   context,
          //   MaterialPageRoute(
          //       builder: (context) => const CreateNewWorkordersPage()),
          // );
        },
        style: OutlinedButton.styleFrom(
          foregroundColor: const Color(0xFF166E16),
          side: const BorderSide(
            color: Color(0xFF166E16), // Change outline color to #166E16
            width: 1.0, // Outline width
          ),
          backgroundColor: Colors.white, // Change background color to white
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Rounded corners
          ),
        ),
        child: const Center(
          child: Text(
            'Cancel',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFF166E16), // Change text color to #166E16
            ),
          ),
        ),
      ),
    );
  }

  Widget _commentTextField() {
    return TextField(
      controller: _remarksController,
      decoration: InputDecoration(
        hintText: 'Type here',
        filled: true, // Enable the fillColor
        fillColor: Colors.white, // Set the background color to white
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Color(
                0xFFD9D9D9), // Border color matching the container's background color
          ),
          borderRadius: BorderRadius.circular(
              4.0), // Add border radius for rounded corners
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
      ),
    );
  }

  Widget _searchDivider() {
    return const Divider(
      height: 1, // Height of the divider
      thickness: 1, // Thickness of the line
      color: Colors.grey, // Color of the line
      indent: 0, // Left margin
      endIndent: 0, // Right margin
    );
  }

  Widget _checkElectricalRoom() {
    return Container(
      color: const Color(0xFFD9D9D9), // Updated background color
      padding: const EdgeInsets.all(08.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Check Electrical Room (Hazards, Lights, Signs, Panels, \nBreakers, Wires) Should be dry & clean',
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
          const SizedBox(height: 16.0), // Add some space between elements
          TextField(
            controller: _remarksController,
            decoration: InputDecoration(
              hintText: 'Type here',
              filled: true, // Enable the fillColor
              fillColor: Colors.white, // Set the background color to white
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(
                      0xFFD9D9D9), // Border color matching the container's background color
                ),
                borderRadius: BorderRadius.circular(
                    4.0), // Add border radius for rounded corners
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _checkMainDistributionPanel() {
    return Container(
      color: Colors.white, // Background color
      padding: const EdgeInsets.all(08.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Check Main Distribution Panel (Condition)',
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
          const SizedBox(height: 16.0), // Add some space between elements
          TextField(
            controller: _remarksController,
            decoration: InputDecoration(
              hintText: 'Type here',
              filled: true, // Enable the fillColor
              fillColor: Colors.white, // Set the background color to white
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color.fromARGB(255, 211, 209,
                      209), // Border color matching the container's background color
                ),
                borderRadius: BorderRadius.circular(
                    4.0), // Add border radius for rounded corners
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
            ),
          ),
        ],
      ),
    );
  }

  Widget _mainElectricMeterReading() {
    return Container(
      color: const Color(0xFFD9D9D9), // Updated background color
      padding: const EdgeInsets.all(8.0),
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
          const SizedBox(height: 16.0), // Add some space between elements
          TextField(
            controller: _remarksController,
            decoration: InputDecoration(
              hintText: 'Type here',
              filled: true, // Enable the fillColor
              fillColor: Colors.white, // Set the background color to white
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(
                      0xFFD9D9D9), // Border color matching the container's background color
                ),
                borderRadius: BorderRadius.circular(
                    4.0), // Add border radius for rounded corners
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
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
