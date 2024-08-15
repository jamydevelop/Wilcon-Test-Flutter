import 'package:flutter/material.dart';
import 'package:wilcon_mobile/widgets/card/card_temporary_data.dart';

class MyWorkOrdersBodyWidget extends StatefulWidget {
  const MyWorkOrdersBodyWidget({super.key});

  @override
  State<MyWorkOrdersBodyWidget> createState() => _MyWorkOrdersBodyWidgetState();
}

class _MyWorkOrdersBodyWidgetState extends State<MyWorkOrdersBodyWidget> {
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
