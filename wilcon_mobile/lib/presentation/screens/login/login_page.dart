import 'package:flutter/material.dart';
import 'package:wilcon_mobile/presentation/screens/homepage/home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, //--------------------------------------
      body: SizedBox(
        child: SafeArea(
          child: _buildUI(),
        ),
      ),
    );
  }

  Widget _buildUI() {
    return Stack(
      children: [
        _imgBackground(),
        _loginForm(),
      ],
    );
  }

  Widget _loginForm() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            //color: Colors.grey,
            borderRadius:
                BorderRadius.circular(10), // Optional: Adds rounded corners
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Form(
              child: Column(
                mainAxisSize: MainAxisSize
                    .min, // Adjusted to min to avoid excessive height
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _imgTagline(),
                  const SizedBox(height: 24),
                  _signedInText(),
                  const SizedBox(height: 24),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Email Address',
                    ),
                  ),
                  const SizedBox(height: 24),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                  const SizedBox(height: 24),
                  _loginButton(),
                  const SizedBox(height: 24),
                  const SizedBox(width: 99, height: 16),
                  _imgInventi(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _signedInText() {
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

  Widget _imgBackground() {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 337, // Background Image Height
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/wilcon_ph.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 337,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.transparent,
                Colors.white, // Adjust the opacity at the bottom
              ],
              stops: [0.0, 1.0], // Adjust stops to control the gradient spread
            ),
          ),
        ),
      ],
    );
  }

  Widget _imgTagline() {
    return const Image(
      image: AssetImage('assets/images/TAGLINE.png'),
    );
  }

  Widget _imgInventi() {
    return const Image(
      image: AssetImage('assets/images/Powered.png'),
    );
  }

  Widget _loginButton() {
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
