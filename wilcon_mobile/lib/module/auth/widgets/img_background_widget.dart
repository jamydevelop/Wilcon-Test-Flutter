import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/auth/widgets/img_tagline_widget.dart';

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
        const Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ImgTaglineWidget(),
          ),
        ),
      ],
    );
  }
}
