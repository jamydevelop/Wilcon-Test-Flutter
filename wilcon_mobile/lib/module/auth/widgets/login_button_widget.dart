import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/homepage/presentation/home_page.dart';

class LoginButtonWidget extends StatefulWidget {
  const LoginButtonWidget({super.key});

  @override
  State<LoginButtonWidget> createState() => _LoginButtonWidgetState();
}

class _LoginButtonWidgetState extends State<LoginButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context)
          .size
          .width, // Set the width to 100% of the screen
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: const Color.fromRGBO(22, 110, 22, 1),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(4)),
          ),
          minimumSize:
              const Size(double.infinity, 52), // Set the height to 52px
          padding:
              const EdgeInsets.all(16), // Add padding inside the button of 16px
          foregroundColor: Colors.white, // Set text color to white
        ),
        onPressed: () {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const Homepage()),
          );
        },
        child: const Text('Login'),
      ),
    );
  }
}
