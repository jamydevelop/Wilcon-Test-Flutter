import 'package:flutter/material.dart';
import 'package:wilcon_mobile/widgets/appbar_widget.dart';
import 'package:wilcon_mobile/widgets/back_screen_widget.dart';
import 'package:wilcon_mobile/widgets/sidebar_widget.dart';
import 'package:wilcon_mobile/widgets/header_bar_widget.dart';

class SmartBuildingSolutionPage extends StatefulWidget {
  const SmartBuildingSolutionPage({super.key});

  @override
  State<SmartBuildingSolutionPage> createState() =>
      _SmartBuildingSolutionPageState();
}

class _SmartBuildingSolutionPageState extends State<SmartBuildingSolutionPage> {
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
                HeaderBar(
                  text: 'Smart Building Solutions',
                  isYellow: false,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget _smartBuildingSolutionPageBody() {
  //   return const Text('This is Smart Building Solution Page! :)');
  // }
}
