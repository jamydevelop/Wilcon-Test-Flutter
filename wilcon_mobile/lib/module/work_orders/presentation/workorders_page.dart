import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/work_orders/presentation/widget/buttons_container.dart';
import 'package:wilcon_mobile/widgets/card_temporary_data.dart';
import 'package:wilcon_mobile/widgets/appbar_widget.dart';
import 'package:wilcon_mobile/widgets/back_screen_widget.dart';
import 'package:wilcon_mobile/widgets/sidebar_widget.dart';
import 'package:wilcon_mobile/widgets/search_bar_widget.dart';
import '../../../widgets/header_bar_widget.dart';

class WorkOrdersPage extends StatefulWidget {
  const WorkOrdersPage({super.key});

  @override
  State<WorkOrdersPage> createState() => _WorkOrdersPageState();
}

class _WorkOrdersPageState extends State<WorkOrdersPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        endDrawer: const CustomSidebar(),
        body: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 12.0), // Adjust padding
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              const SizedBox(height: 24),
              const CustomizedAppBar(),
              const BackToPrevScreen(),
              const HeaderBar(text: 'Work Orders'),
              const SizedBox(height: 12),
              ButtonContainer(),
              const SizedBox(height: 12),
              const SearchBarWidget(hintText: 'Search'),
              const SizedBox(height: 12),
              const Expanded(
                child: Center(child: CardTemporaryData()),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
