import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/work_orders/work_orders/workorders_page.dart';

class WorkOrdersBtnWidget extends StatefulWidget {
  const WorkOrdersBtnWidget({super.key});

  @override
  State<WorkOrdersBtnWidget> createState() => _WorkOrdersBtnWidgetState();
}

class _WorkOrdersBtnWidgetState extends State<WorkOrdersBtnWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 104,
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const WorkOrdersPage()),
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.work,
                size: 25,
                color: Colors.white,
              ),
              SizedBox(height: 8),
              Text(
                'Work Orders',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 4),
            ],
          ),
        ),
      ),
    );
  }
}
