import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/scan_qr_code/presentation/scanqrcode_page.dart';

class ScanQrCodeBtnWidget extends StatefulWidget {
  const ScanQrCodeBtnWidget({super.key});

  @override
  State<ScanQrCodeBtnWidget> createState() => _ScanQrCodeBtnWidgetState();
}

class _ScanQrCodeBtnWidgetState extends State<ScanQrCodeBtnWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 100,
      child: SizedBox(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => const ScanQRCodePage()),
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
                Icons.qr_code_2,
                size: 25,
                color: Colors.white,
              ),
              SizedBox(height: 8),
              Text(
                'Scan QR Code',
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
