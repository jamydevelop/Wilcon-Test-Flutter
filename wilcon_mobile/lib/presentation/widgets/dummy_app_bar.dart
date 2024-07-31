import 'package:flutter/material.dart';

class DummyAppBar extends StatefulWidget {
  const DummyAppBar({super.key});

  @override
  State<DummyAppBar> createState() => _DummyAppBarState();
}

class _DummyAppBarState extends State<DummyAppBar> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
       
        child:  Text('data'),
      ),
    );
  }
}