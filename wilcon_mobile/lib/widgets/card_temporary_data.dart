import 'package:flutter/material.dart';
import 'package:wilcon_mobile/widgets/card_container.dart';
import 'package:wilcon_mobile/widgets/card_primary_widget.dart';

class CardTemporaryData extends StatelessWidget {
  const CardTemporaryData({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CardContainer(
          child: CardPrimary(
            title: 'Ticket #1466',
            rowTitles: [
              'By',
              'Issue',
              'Update',
              'Type',
              'Priority',
              'Status',
              'Location',
              'Provider',
              'Category'
            ],
            rowContents: [
              'Patricia Mae Meichor',
              'Nov 30, 2023\n11:07 am (18 days)\nNOT COOLING',
              'Target Date:\n2023-12-01 11:07:08\nNov 30, 2023\n11:07 am (18 days)',
              'CM',
              'High',
              'New',
              'D02 - Balintawak',
              'In house - WDI',
              'Mechanical - Aircon',
            ],
          ),
        ),
        SizedBox(height: 0),
        CardContainer(
          child: CardPrimary(
            title: 'Ticket #1467',
            rowTitles: [
              'By',
              'Issue',
              'Update',
              'Type',
              'Priority',
              'Status',
              'Location',
              'Provider',
              'Category'
            ],
            rowContents: [
              'John Doe',
              'Dec 01, 2023\n09:30 am (17 days)\nNOT COOLING',
              'Target Date:\n2023-12-02 09:30:00\nDec 01, 2023\n09:30 am (17 days)',
              'CM',
              'Medium',
              'In Progress',
              'D03 - Cubao',
              'Outsource - ABC Corp.',
              'Electrical - Lighting',
            ],
          ),
        ),
        SizedBox(height: 0),
        CardContainer(
          child: CardPrimary(
            title: 'Ticket #1468',
            rowTitles: [
              'By',
              'Issue',
              'Update',
              'Type',
              'Priority',
              'Status',
              'Location',
              'Provider',
              'Category'
            ],
            rowContents: [
              'Jane Smith',
              'Dec 02, 2023\n10:00 am (16 days)\nNOT HEATING',
              'Target Date:\n2023-12-03 10:00:00\nDec 02, 2023\n10:00 am (16 days)',
              'EM',
              'Low',
              'Resolved',
              'D04 - Makati',
              'In house - XYZ Ltd.',
              'Mechanical - Heating',
            ],
          ),
        ),
      ],
    );
  }
}
