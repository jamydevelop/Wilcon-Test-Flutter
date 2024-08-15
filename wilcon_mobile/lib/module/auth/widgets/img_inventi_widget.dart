import 'package:flutter/material.dart';

class ImgInventiWidget extends StatefulWidget {
  const ImgInventiWidget({super.key});

  @override
  State<ImgInventiWidget> createState() => _ImgInventiWidgetState();
}

class _ImgInventiWidgetState extends State<ImgInventiWidget> {
  @override
  Widget build(BuildContext context) {
    return const Image(
      image: AssetImage('assets/images/Powered.png'),
    );
  }
}
