import 'package:flutter/material.dart';

class CreateNewWorkordersBodyWidget extends StatefulWidget {
  const CreateNewWorkordersBodyWidget({super.key});

  @override
  State<CreateNewWorkordersBodyWidget> createState() =>
      _CreateNewWorkordersBodyWidgetState();
}

class _CreateNewWorkordersBodyWidgetState
    extends State<CreateNewWorkordersBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 12.0), // 12px margin on left and right
      child: Container(
        //color: Colors.grey,
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align children to the start (left)
          children: [
            const SizedBox(height: 12),
            _searchLocation(),
            _testWidget01(),
            _testWidget02(),
          ],
        ),
      ),
    );
  }

  Widget _testWidget01() {
    return Container(
      color: Colors.amberAccent,
      width: double.infinity, // Expand to full width available
      child: const Text(
        "data",
        style: TextStyle(
          fontSize: 16, // Adjust text size if needed
        ),
        textAlign: TextAlign.center, // Center text within the container
      ),
    );
  }

  Widget _testWidget02() {
    return const Align(
      alignment: Alignment.centerRight,
      child: Text(
        'This is a sample data',
        textAlign: TextAlign.left,
        style: TextStyle(
            // Optionally, adjust text style here if needed
            ),
      ),
    );
  }

  Widget _searchLocation() {
    return Padding(
      padding: const EdgeInsets.all(0.0), // Padding of 12 pixels on all sides
      child: TextField(
        decoration: InputDecoration(
          hintText: "Location",
          hintStyle: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey, // Border color
              width: 1.0, // Border width
            ),
            borderRadius: BorderRadius.circular(4.0), // Updated border radius
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.blue, // Color when focused
              width: 1.0, // Border width when focused
            ),
            borderRadius: BorderRadius.circular(4.0), // Updated border radius
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey, // Color when enabled
              width: 1.0, // Border width when enabled
            ),
            borderRadius: BorderRadius.circular(4.0), // Updated border radius
          ),
          suffixIcon: const Icon(
            Icons.search,
          ),
        ),
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
