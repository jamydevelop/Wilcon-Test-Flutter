import 'package:flutter/material.dart';

class FilterDialog extends StatelessWidget {
  const FilterDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(4),
          topRight: Radius.circular(0),
          bottomLeft: Radius.circular(0),
          bottomRight: Radius.circular(0),
        ),
      ),
      child: Stack(
        children: [
          Container(
            width: 336,
            height: 478,
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Filter',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                const SizedBox(height: 16),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Meter ID',
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12),
                const TextField(
                  decoration: InputDecoration(
                    hintText: 'Tenant',
                    suffixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField<String>(
                  hint: const Text('Type'),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 12.0), // Adjust padding if needed
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:
                            Color.fromARGB(255, 168, 181, 194), // Border color
                        width: 1.0, // Border width
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:
                            Color.fromARGB(255, 168, 181, 194), // Border color
                        width: 1.0, // Border width
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:
                            Color.fromARGB(255, 168, 181, 194), // Border color
                        width: 1.0, // Border width
                      ),
                    ),
                  ),
                  items: <String>['Electricity', 'Water'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {},
                ),
                const SizedBox(height: 12),
                DropdownButtonFormField<String>(
                  hint: const Text('Branch'),
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                        horizontal: 12.0), // Adjust padding if needed
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:
                            Color.fromARGB(255, 168, 181, 194), // Border color
                        width: 1.0, // Border width
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:
                            Color.fromARGB(255, 168, 181, 194), // Border color
                        width: 1.0, // Border width
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color:
                            Color.fromARGB(255, 168, 181, 194), // Border color
                        width: 1.0, // Border width
                      ),
                    ),
                  ),
                  items: <String>['Branch 1', 'Branch 2'].map((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                  onChanged: (value) {},
                ),
                const SizedBox(height: 8),
                TextField(
                  readOnly: true,
                  onTap: () async {
                    // ignore: unused_local_variable
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2101),
                    );
                  },
                  decoration: const InputDecoration(
                    hintText: 'Reading Date',
                    suffixIcon: Icon(Icons.calendar_today),
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                    // Handle the "Show" button press
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF166E16), // Button color
                    minimumSize:
                        const Size(double.infinity, 52), // Full width button
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(4), // Set border radius to 4px
                    ),
                  ),
                  child: const Text(
                    'Show',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 8,
            top: 8,
            child: IconButton(
              icon: const Icon(Icons.close),
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
            ),
          ),
        ],
      ),
    );
  }
}
