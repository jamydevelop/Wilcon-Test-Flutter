import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/homepage/widgets/checklist_btn_widget.dart';
import 'package:wilcon_mobile/module/homepage/widgets/meter_readings_btn_widget.dart';
import 'package:wilcon_mobile/module/homepage/widgets/my_pm_tickets_btn_widget.dart';
import 'package:wilcon_mobile/module/homepage/widgets/my_work_orders_btn_widget.dart';
import 'package:wilcon_mobile/module/homepage/widgets/scan_qr_code_btn_widget.dart';
import 'package:wilcon_mobile/module/homepage/widgets/smart_building_solution_btn_widget.dart';
import 'package:wilcon_mobile/module/homepage/widgets/work_orders_btn_widget.dart';

class HomepageBodyWidget extends StatefulWidget {
  const HomepageBodyWidget({super.key});

  @override
  State<HomepageBodyWidget> createState() => _HomepageBodyWidgetState();
}

class _HomepageBodyWidgetState extends State<HomepageBodyWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: const Column(
          children: [
            SizedBox(height: 24),
            Row(
              children: [
                MyWorkOrdersBtnWidget(),
                SizedBox(width: 10),
                MyPmTicketsBtnWidget(),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                SmartBuildingSolutionBtnWidget(),
                SizedBox(width: 10),
                ChecklistBtnWidget(),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                WorkOrdersBtnWidget(),
                SizedBox(width: 10),
                MeterReadingsBtnWidget(),
              ],
            ),
            SizedBox(height: 10),
            ScanQrCodeBtnWidget(),
            SizedBox(height: 24),
          ],
        ),
      ),
    );
  }
}
