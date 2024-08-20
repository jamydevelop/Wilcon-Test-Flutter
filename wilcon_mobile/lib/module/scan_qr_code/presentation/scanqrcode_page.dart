import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/scan_qr_code/widgets/qr_code_body_widget.dart';
import 'package:wilcon_mobile/widgets/customized_appbar/cuztomized_appbar_widget.dart';
import 'package:wilcon_mobile/widgets/sidebar_widget.dart';

class ScanQRCodePage extends StatefulWidget {
  const ScanQRCodePage({super.key});

  @override
  State<ScanQRCodePage> createState() => _ScanQRCodePageState();
}

class _ScanQRCodePageState extends State<ScanQRCodePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const CustomSidebar(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                padding: const EdgeInsets.only(
                    top: 12.0,
                    left: 12.0,
                    right: 12.0), // Removed bottom padding
                child: const CuztomizedAppbarWidget(),
              ),
              const Expanded(
                child: QrCodeBodyWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
