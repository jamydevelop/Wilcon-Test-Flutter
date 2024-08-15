import 'package:flutter/material.dart';

class ImgTaglineWidget extends StatefulWidget {
  const ImgTaglineWidget({super.key});

  @override
  State<ImgTaglineWidget> createState() => _ImgTaglineWidgetState();
}

class _ImgTaglineWidgetState extends State<ImgTaglineWidget> {
  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage('assets/images/TAGLINE.png'),
    );
  }
}
