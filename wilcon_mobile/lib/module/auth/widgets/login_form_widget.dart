import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/auth/widgets/img_inventi_widget.dart';
import 'package:wilcon_mobile/module/auth/widgets/login_button_widget.dart';
import 'package:wilcon_mobile/module/auth/widgets/signed_in_text_widget.dart';

class LoginFormWidget extends StatefulWidget {
  const LoginFormWidget({super.key});

  @override
  State<LoginFormWidget> createState() => _LoginFormWidgetState();
}

class _LoginFormWidgetState extends State<LoginFormWidget> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius:
                BorderRadius.circular(10), // Optional: Adds rounded corners
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 12, right: 12, bottom: 16),
            child: Form(
              child: Column(
                mainAxisSize: MainAxisSize
                    .min, // Adjusted to min to avoid excessive height
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 24),
                  SignedInTextWidget(),
                  SizedBox(height: 24),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email Address',
                    ),
                  ),
                  SizedBox(height: 24),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  SizedBox(height: 24),
                  LoginButtonWidget(),
                  SizedBox(height: 24),
                  SizedBox(width: 99, height: 16),
                  ImgInventiWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
