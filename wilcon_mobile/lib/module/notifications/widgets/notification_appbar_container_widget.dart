import 'package:flutter/material.dart';
import 'package:wilcon_mobile/widgets/customized_appbar/appbar_widget.dart';
import 'package:wilcon_mobile/widgets/customized_appbar/back_screen_widget.dart';
import 'package:wilcon_mobile/widgets/header_bar_widget.dart';

class NotificationAppbarContainerWidget extends StatefulWidget {
  const NotificationAppbarContainerWidget({super.key});

  @override
  State<NotificationAppbarContainerWidget> createState() =>
      _NotificationAppbarContainerWidgetState();
}

class _NotificationAppbarContainerWidgetState
    extends State<NotificationAppbarContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            SizedBox(height: 24),
            CustomizedAppBar(),
            BackToPrevScreen(),
            SizedBox(height: 12),
            HeaderBar(
              text: 'Notifications',
              isYellow: false,
            ),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
