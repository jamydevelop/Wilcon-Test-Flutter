import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/work_orders/my_work_orders/widgets/my_work_orders_body_widget.dart';
import 'package:wilcon_mobile/widgets/buttons_widget.dart';
import 'package:wilcon_mobile/widgets/customized_appbar/cuztomized_appbar_widget.dart';
import 'package:wilcon_mobile/widgets/search_bar_widget.dart';
import 'package:wilcon_mobile/widgets/sidebar_widget.dart';
import 'package:wilcon_mobile/widgets/header_bar_widget.dart';

class MyWorkOrders extends StatefulWidget {
  const MyWorkOrders({super.key});

  @override
  State<MyWorkOrders> createState() => _MyWorkOrdersState();
}

class _MyWorkOrdersState extends State<MyWorkOrders> {
  final ButtonClass buttonClass = ButtonClass();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Scaffold(
          endDrawer: const CustomSidebar(),
          body: Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: 0.0), // Remove left and right padding
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white, // Background color
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1), // Shadow color
                        spreadRadius: 2, // Spread radius
                        blurRadius: 5, // Blur radius
                        offset: const Offset(0, 3), // Shadow position
                      ),
                    ],
                    borderRadius: BorderRadius.zero, // Remove rounded corners
                  ),
                  padding: const EdgeInsets.all(
                      12.0), // Padding inside the container
                  child: Column(
                    children: [
                      const CuztomizedAppbarWidget(),
                      const SizedBox(height: 12),
                      const HeaderBar(
                        text: 'My Work Orders',
                        isYellow: false,
                      ),
                      const SizedBox(height: 12),
                      const SearchBarWidget(hintText: 'Search'),
                      const SizedBox(height: 12),
                      buttonClass.filterButton(context),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
                const MyWorkOrdersBodyWidget(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
