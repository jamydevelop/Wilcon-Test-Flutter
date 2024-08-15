import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/homepage/widgets/header_user_widget.dart';
import 'package:wilcon_mobile/module/homepage/widgets/homepage_body_widget.dart';
import 'package:wilcon_mobile/widgets/buttons_widget.dart';
import 'package:wilcon_mobile/widgets/sidebar_widget.dart';
import 'package:wilcon_mobile/widgets/appbar_widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  ButtonClass buttonClass = ButtonClass();
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        endDrawer: CustomSidebar(),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomizedAppBar(),
                SizedBox(height: 24),
                HeaderUserWidget(),
                SizedBox(height: 24),
                HomepageBodyWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
