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
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: 12.0), // 12px margin on left and right
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.start, // Align children to the start (left)
          children: [
            const SizedBox(height: 12),
            _searchLocation(),
            const SizedBox(height: 12),
            _typeDropDown(),
            const SizedBox(height: 12),
            _categoryDropDown(),
            const SizedBox(height: 12),
            _subCategoryDropDown(),
            const SizedBox(height: 12),
            _issueDescription(),
            const SizedBox(height: 12),
            _priorityLevel(),
            const SizedBox(height: 12),
            _serviceProvider(),
            const SizedBox(
              height: 12,
            ),
            _readingDate(),
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

  Widget _typeDropDown() {
    return DropdownButtonFormField<String>(
      isDense: false,
      itemHeight: 55,
      hint: const Text('Type'),
      decoration: const InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(horizontal: 12.0), // Adjust padding if needed
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194), // Border color
            width: 1.0, // Border width
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194), // Border color
            width: 1.0, // Border width
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194), // Border color
            width: 1.0, // Border width
          ),
        ),
      ),
      items: <String>[
        'Work Order',
        'Work Order 1',
        'Work Order 2',
        'Work Order 3'
      ].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (value) {},
    );
  }

  Widget _categoryDropDown() {
    return DropdownButtonFormField<String>(
      isDense: false,
      itemHeight: 55,
      hint: const Text('Category'),
      decoration: const InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(horizontal: 12.0), // Adjust padding if needed
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194), // Border color
            width: 1.0, // Border width
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194), // Border color
            width: 1.0, // Border width
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194), // Border color
            width: 1.0, // Border width
          ),
        ),
      ),
      items: <String>['Category 1', 'Category 2', 'Category 3', 'Category 4']
          .map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (value) {},
    );
  }

  Widget _subCategoryDropDown() {
    return DropdownButtonFormField<String>(
      isDense: false,
      itemHeight: 55,
      hint: const Text('Sub-Category'),
      decoration: const InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(horizontal: 12.0), // Adjust padding if needed
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194), // Border color
            width: 1.0, // Border width
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194), // Border color
            width: 1.0, // Border width
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194), // Border color
            width: 1.0, // Border width
          ),
        ),
      ),
      items: <String>[
        'Sub-Category 1',
        'Sub-Category 2',
        'Sub-Category 3',
        'Sub-Category 4'
      ].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (value) {},
    );
  }

  Widget _issueDescription() {
    return Padding(
      padding: const EdgeInsets.all(0.0), // Padding of 12 pixels on all sides
      child: TextField(
        decoration: InputDecoration(
          hintText: "Issue/Description",
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

  Widget _priorityLevel() {
    return DropdownButtonFormField<String>(
      isDense: false,
      itemHeight: 55,
      hint: const Text('Priority Level'),
      decoration: const InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(horizontal: 12.0), // Adjust padding if needed
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194), // Border color
            width: 1.0, // Border width
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194), // Border color
            width: 1.0, // Border width
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194), // Border color
            width: 1.0, // Border width
          ),
        ),
      ),
      items: <String>[
        'Prio Lvl 1',
        'Prio Lvl 2',
        'Prio Lvl 3',
        'Prio Lvl 4',
      ].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (value) {},
    );
  }

  Widget _serviceProvider() {
    return DropdownButtonFormField<String>(
      isDense: false,
      itemHeight: 55,
      hint: const Text('Service Provider'),
      decoration: const InputDecoration(
        contentPadding:
            EdgeInsets.symmetric(horizontal: 12.0), // Adjust padding if needed
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194), // Border color
            width: 1.0, // Border width
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194), // Border color
            width: 1.0, // Border width
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194), // Border color
            width: 1.0, // Border width
          ),
        ),
      ),
      items: <String>[
        'Service Provider 01',
        'Service Provider 02',
        'Service Provider 03',
        'Service Provider 04',
      ].map((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
      onChanged: (value) {},
    );
  }

  Widget _readingDate() {
    return TextField(
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
    );
  }
}
