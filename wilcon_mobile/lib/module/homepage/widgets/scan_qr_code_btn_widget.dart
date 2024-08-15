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
      height: 104,
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
            borderRadius: BorderRadius.circular(8), // Rounded corners
          ),
          padding: EdgeInsets.zero, // Remove padding to use Stack properly
        ),
        child: const Stack(
          children: [
            // Background icon
            Positioned(
              bottom: -12, // Move the icon more to the bottom
              left: -14, // Move the icon more to the left
              child: Opacity(
                opacity: 0.3,
                child: Icon(
                  Icons.qr_code_2, // Background icon
                  size: 83, // Increase size for better visibility
                  color: Colors.white,
                ),
              ),
            ),
            // Centered content
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    Icons.qr_code_2, // Foreground icon
                    size: 25,
                    color: Colors.white,
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Scan QR Code',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
