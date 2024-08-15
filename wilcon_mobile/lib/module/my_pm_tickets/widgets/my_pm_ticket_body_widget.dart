import 'package:flutter/material.dart';
import 'package:wilcon_mobile/widgets/card/card_temporary_data.dart';

class MyPmTicketBodyWidget extends StatefulWidget {
  const MyPmTicketBodyWidget({super.key});

  @override
  State<MyPmTicketBodyWidget> createState() => _MyPmTicketBodyWidgetState();
}

class _MyPmTicketBodyWidgetState extends State<MyPmTicketBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(
              horizontal: 12.0), // Add 12px margin on left and right
          child: const CardTemporaryData(), // body: ,
        ),
      ),
    );
  }
}
