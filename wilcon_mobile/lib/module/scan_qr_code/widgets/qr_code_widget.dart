import 'package:flutter/material.dart';

class QrCodeWidget extends StatefulWidget {
  const QrCodeWidget({super.key});

  @override
  State<QrCodeWidget> createState() => _QrCodeWidgetState();
}

class _QrCodeWidgetState extends State<QrCodeWidget> {
  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Center(
        child: Text('data'),
      ),
    );
  }
}
