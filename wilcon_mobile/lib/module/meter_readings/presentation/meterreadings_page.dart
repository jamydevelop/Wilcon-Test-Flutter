import 'package:flutter/material.dart';
import 'package:wilcon_mobile/widgets/appbar_widget.dart';
import 'package:wilcon_mobile/widgets/back_screen_widget.dart';
import 'package:wilcon_mobile/widgets/sidebar_widget.dart';
import 'package:wilcon_mobile/widgets/header_bar_widget.dart';

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
          endDrawer: CustomSidebar(),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomizedAppBar(),
                BackToPrevScreen(),
                HeaderBar(text: 'Meter Readings'),
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
