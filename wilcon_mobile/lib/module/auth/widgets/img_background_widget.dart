import 'package:flutter/material.dart';

class ImgBackgroundWidget extends StatefulWidget {
  const ImgBackgroundWidget({super.key});

  @override
  State<ImgBackgroundWidget> createState() => _ImgBackgroundWidgetState();
}

class _ImgBackgroundWidgetState extends State<ImgBackgroundWidget> {
  @override
  Widget build(BuildContext context) {
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
}
