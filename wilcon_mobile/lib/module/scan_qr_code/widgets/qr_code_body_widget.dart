import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:wilcon_mobile/module/scan_qr_code/widgets/qr_button.dart';
import 'package:wilcon_mobile/module/scan_qr_code/widgets/qr_scanner_overlay_widget.dart';

class QrCodeBodyWidget extends StatefulWidget {
  const QrCodeBodyWidget({super.key});

  @override
  State<QrCodeBodyWidget> createState() => _QrCodeBodyWidgetState();
}

class _QrCodeBodyWidgetState extends State<QrCodeBodyWidget> {
  String? _lastScannedBarcode;

  void _showSnackbar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Camera view
          Positioned.fill(
            child: MobileScanner(
              controller: MobileScannerController(
                detectionSpeed: DetectionSpeed.noDuplicates,
              ),
              onDetect: (capture) {
                final List<Barcode> barcodes = capture.barcodes;
                for (final barcode in barcodes) {
                  setState(() {
                    _lastScannedBarcode = barcode.rawValue;
                  });
                }
              },
            ),
          ),
          // QRScannerOverlay on top of the camera view
          QrScannerOverlayWidget(
            overlayColour: Colors.black.withOpacity(0.5),
          ),
          // Positioned widget to place the button at the bottom
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: QrButton(
                onPressed: () {
                  if (_lastScannedBarcode != null) {
                    _showSnackbar('QR Code: $_lastScannedBarcode');
                  } else {
                    _showSnackbar('No QR Code scanned yet');
                  }
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
