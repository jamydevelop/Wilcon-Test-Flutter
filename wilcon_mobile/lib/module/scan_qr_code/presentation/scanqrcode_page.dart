import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/scan_qr_code/widgets/qr_button.dart';
import 'package:wilcon_mobile/module/scan_qr_code/widgets/qr_code_widget.dart';
import 'package:wilcon_mobile/widgets/appbar_widget.dart';
import 'package:wilcon_mobile/widgets/back_screen_widget.dart';
import 'package:wilcon_mobile/widgets/sidebar_widget.dart';

class ScanQRCodePage extends StatefulWidget {
  const ScanQRCodePage({super.key});

  @override
  State<ScanQRCodePage> createState() => _ScanQRCodePageState();
}

class _ScanQRCodePageState extends State<ScanQRCodePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      endDrawer: CustomSidebar(),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              CustomizedAppBar(),
              BackToPrevScreen(),
              Expanded(
                  child:
                      QrCodeWidget()), // Ensures QrCodeWidget takes available space
              QrButton(),
              SizedBox(height: 24),
              // Uncomment and modify if needed
              // HeaderBar(
              //   text: 'Scan QR Code',
              //   isYellow: false,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
