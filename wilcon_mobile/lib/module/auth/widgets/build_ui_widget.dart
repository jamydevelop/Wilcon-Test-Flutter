import 'package:flutter/material.dart';
import 'package:wilcon_mobile/module/auth/widgets/img_background_widget.dart';
import 'package:wilcon_mobile/module/auth/widgets/login_form_widget.dart';

class BuildUiWidget extends StatefulWidget {
  const BuildUiWidget({super.key});

  @override
  State<BuildUiWidget> createState() => _BuildUiWidgetState();
}

class _BuildUiWidgetState extends State<BuildUiWidget> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ImgBackgroundWidget(),
        LoginFormWidget(),
      ],
    );
  }
}
