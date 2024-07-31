import 'package:flutter/material.dart';
import 'package:wilcon_mobile/presentation/widgets/custom_appbar.dart';
import 'package:wilcon_mobile/presentation/widgets/custom_drawer.dart';

class TicketlistPage extends StatefulWidget {
  const TicketlistPage({super.key});

  @override
  State<TicketlistPage> createState() => _TicketlistPageState();
}

class _TicketlistPageState extends State<TicketlistPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(),
      endDrawer: CustomDrawer(),
      body: Center(
        child: Text('This is the Checklist Page :) '),
      ),
    );
  }
}