import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/work_orders/list_of_checklist/presentation/list_of_checklist_page.dart';

class ChecklistBtnWidget extends StatefulWidget {
  const ChecklistBtnWidget({super.key});

  @override
  State<ChecklistBtnWidget> createState() => _ChecklistBtnWidgetState();
}

class _ChecklistBtnWidgetState extends State<ChecklistBtnWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 104,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (context) => const ListOfChecklistPage()),
            );
          },
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: const Color.fromRGBO(22, 110, 22, 1),
            shape: RoundedRectangleBorder(
              borderRadius:
                  BorderRadius.circular(8), // Removes the rounded corners
            ), // Text color
          ),
          child: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.check_box,
                size: 25,
                color: Colors.white,
              ),
              SizedBox(height: 8),
              Text(
                'Checklist',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 4),
            ],
          ),
        ),
      ),
    );
  }
}
