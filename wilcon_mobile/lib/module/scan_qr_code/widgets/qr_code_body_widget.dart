import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:wilcon_mobile/module/scan_qr_code/widgets/qrscanneroverlay.dart';

class QrCodeBodyWidget extends StatelessWidget {
  const QrCodeBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Camera view
          MobileScanner(
            controller: MobileScannerController(
              detectionSpeed: DetectionSpeed.noDuplicates,
            ),
            onDetect: (capture) {
              // Handle barcode detection here
              // final List<Barcode> barcodes = capture.barcodes;
              // for (final barcode in barcodes) {
              //   print('Barcode Found! ${barcode.rawValue}');
              // }
            },
          ),
          // QRScannerOverlay on top of the camera view
          QRScannerOverlay(
            overlayColour: Colors.black.withOpacity(0.5),
          ),
        ],
      ),
    );
  }
}
