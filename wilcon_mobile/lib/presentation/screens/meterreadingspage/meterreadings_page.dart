import 'package:flutter/material.dart';
import 'package:wilcon_mobile/presentation/widgets/appbar_01.dart';
import 'package:wilcon_mobile/presentation/widgets/back_screen_widget.dart';
import 'package:wilcon_mobile/presentation/widgets/custom_drawer.dart';
import 'package:wilcon_mobile/presentation/widgets/header_widget.dart';

class MeterReadingsPage extends StatefulWidget {
  const MeterReadingsPage({super.key});

  @override
  State<MeterReadingsPage> createState() => _MeterReadingsPageState();
}

class _MeterReadingsPageState extends State<MeterReadingsPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Scaffold(
          endDrawer: CustomDrawer(),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                AppBar01Class(),
                BackToPrevScreen(),
                TicketHeader(text: 'Meter Readings'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget _meterReadingsPageBody() {
  //   return const Text('This is Meter Readings Page! :)');
  // }
}
