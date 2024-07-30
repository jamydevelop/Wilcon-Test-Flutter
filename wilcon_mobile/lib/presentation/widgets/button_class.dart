import 'package:flutter/material.dart';

class ButtonClass {
  Widget buttonOne(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Action for button one
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Button One Pressed')),
        );
      },
      child: const Text('Button One'),
    );
  }

  Widget buttonTwo(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Action for button two
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Button Two Pressed')),
        );
      },
      child: const Text('Button Two'),
    );
  }

  Widget buttonThree(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Action for button three
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Button Three Pressed')),
        );
      },
      child: const Text('Button Three'),
    );
  }
}
