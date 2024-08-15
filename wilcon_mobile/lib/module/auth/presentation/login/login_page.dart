import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/auth/widgets/build_ui_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SizedBox(
          child: SafeArea(
            child: BuildUiWidget(),
          ),
        ),
      ),
    );
  }
}
