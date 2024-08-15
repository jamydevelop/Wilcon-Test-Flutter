import 'package:flutter/material.dart';

class SignedInTextWidget extends StatefulWidget {
  const SignedInTextWidget({super.key});

  @override
  State<SignedInTextWidget> createState() => _SignedInTextWidgetState();
}

class _SignedInTextWidgetState extends State<SignedInTextWidget> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Sign In',
      style: TextStyle(
        fontFamily: 'Open Sans',
        fontSize: 20,
        fontWeight: FontWeight.w700,
        height: 20 / 20, // Line height 20px
        letterSpacing: 0.0015, // Letter spacing
        //textAlign: TextAlign.center,
      ),
    );
  }
}
