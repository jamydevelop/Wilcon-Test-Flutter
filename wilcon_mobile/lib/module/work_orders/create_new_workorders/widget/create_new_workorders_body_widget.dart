import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/work_orders/create_new_workorders/widget/saved_modal_widget.dart';
import 'package:wilcon_mobile/module/work_orders/list_of_checklist/presentation/list_of_checklist_page.dart';
import 'package:wilcon_mobile/widgets/search_bar_widget.dart';

class CreateNewWorkordersBodyWidget extends StatefulWidget {
  const CreateNewWorkordersBodyWidget({super.key});

  @override
  State<CreateNewWorkordersBodyWidget> createState() =>
      _CreateNewWorkordersBodyWidgetState();
}

class _CreateNewWorkordersBodyWidgetState
    extends State<CreateNewWorkordersBodyWidget> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
              const SizedBox(height: 12),
              _readingDate(),
              const SizedBox(height: 12),
              _breakdownCheckbox(),
              _targetDateText("12/07/2023"),
              const SizedBox(height: 12),
              _subHeader("Equipment"),
              const SizedBox(height: 12),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: const SearchBarWidget(hintText: 'Search Equipment'),
              ),
              const SizedBox(height: 12),
              _searchDivider(),
              const SizedBox(height: 12),
              _subHeader("Checklist"),
              const SizedBox(height: 12),
              // Use Align to properly position the button
              Align(
                alignment: Alignment.center,
                child: SizedBox(
                  width: double.infinity, // Make button full width
                  child: createNewButton(context),
                ),
              ),
              const SizedBox(height: 12),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8),
                child: const SearchBarWidget(hintText: 'Checklist No.'),
              ),
              const SizedBox(height: 12),
              _searchDivider(),
              const SizedBox(height: 12),
              saveTicketButton(context),
              const SizedBox(height: 12),
              cancelTicketButton(context),
              const SizedBox(height: 12),
              _searchDivider(),
              const SizedBox(height: 12),
            ],
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

  Widget saveTicketButton(BuildContext context) {
    return SizedBox(
      height: 44, // Set the height to 44 pixels
      child: ElevatedButton(
        onPressed: () {
          // Action for button
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => const ListOfChecklistPage()),
          );
          const SavedModalWidget();
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
            'Save Ticket',
            style: TextStyle(
              fontSize: 16,
              color: Color(0xFFF4F7FA), // Change text color to #F4F7FA
            ),
          ),
        ),
      ),
    );
  }

  Widget createNewButton(BuildContext context) {
    return SizedBox(
      height: 44, // Set the height to 44 pixels
      child: ElevatedButton(
        onPressed: () {
          // Action for button one
          // Navigator.pushReplacement(
          //   context,
          //   MaterialPageRoute(
          //       builder: (context) => const CreateNewWorkordersPage()),
          // );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFFACE17), // Change button color
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8), // Decrease rounded corners
          ),
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add_circle, color: Color(0xFF15422B)), // Plus icon color
            SizedBox(width: 8), // Optional spacing between icon and text
            Text(
              'Create New',
              style: TextStyle(
                fontSize: 16,
                color: Color(0xFF15422B), // Text color
              ),
            ),
          ],
        ),
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

  Widget _breakdownCheckbox() {
    return Row(
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              _isChecked = newValue ?? false;
            });
          },
        ),
        const Expanded(
          child: Text(
            'Breakdown',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }

  Widget _searchLocation() {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Location",
          hintStyle: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.blue,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(4.0),
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
        contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194),
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194),
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194),
            width: 1.0,
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
        contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194),
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194),
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194),
            width: 1.0,
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
        contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194),
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194),
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194),
            width: 1.0,
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
      padding: const EdgeInsets.all(0.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: "Issue/Description",
          hintStyle: const TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.w700,
          ),
          border: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.blue,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.grey,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(4.0),
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
        contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194),
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194),
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194),
            width: 1.0,
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
        contentPadding: EdgeInsets.symmetric(horizontal: 12.0),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194),
            width: 1.0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194),
            width: 1.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 168, 181, 194),
            width: 1.0,
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

  Widget _targetDateText(String targetDate) {
    return Text(
      'Target date: $targetDate',
      style: const TextStyle(
        fontSize: 12,
        fontStyle: FontStyle.normal,
        fontWeight: FontWeight.w600,
        height: 20 / 12,
        letterSpacing: 0.048,
      ),
    );
  }

  Widget _subHeader(String myTitle) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned.fill(
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
              border: Border(
                top: BorderSide(
                  color: Colors.white,
                  width: 4.0,
                ),
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 12.0),
          decoration: const BoxDecoration(
            color: Color.fromRGBO(21, 66, 43, 1),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(4.0),
              topRight: Radius.circular(4.0),
              bottomLeft: Radius.circular(0.0),
              bottomRight: Radius.circular(0.0),
            ),
          ),
          child: Text(
            myTitle,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
              height: 20 / 14,
              letterSpacing: 0.028,
            ),
          ),
        ),
      ],
    );
  }
}
