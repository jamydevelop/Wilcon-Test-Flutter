import 'package:flutter/material.dart';
import 'package:wilcon_mobile/widgets/buttons_widget.dart';

class ButtonContainer extends StatelessWidget {
  final ButtonClass buttonClass = ButtonClass();
  ButtonContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: buttonClass.createNewButton(context),
        ),
        const SizedBox(width: 8), // Add spacing between the buttons
        Flexible(
          flex: 1,
          child: buttonClass.filterButton(context),
        ),
      ],
    );
  }
}
