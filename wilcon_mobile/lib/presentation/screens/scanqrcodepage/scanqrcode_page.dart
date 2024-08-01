import 'package:flutter/material.dart';
import 'package:wilcon_mobile/presentation/widgets/appbar_widget.dart';
import 'package:wilcon_mobile/presentation/widgets/back_screen_widget.dart';
import 'package:wilcon_mobile/presentation/widgets/sidebar_widget.dart';
import 'package:wilcon_mobile/presentation/widgets/header_bar_widget.dart';

class ScanQRCodePage extends StatefulWidget {
  const ScanQRCodePage({super.key});

  @override
  State<ScanQRCodePage> createState() => _ScanQRCodePageState();
}

class _ScanQRCodePageState extends State<ScanQRCodePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Scaffold(
          endDrawer: CustomSidebar(),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomizedAppBar(),
                BackToPrevScreen(),
                HeaderBar(text: 'Scan QR Code'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget _scanQRCodePageBody() {
  //   return const Text('This is Scan QR Code Page! :)');
  // }
}
