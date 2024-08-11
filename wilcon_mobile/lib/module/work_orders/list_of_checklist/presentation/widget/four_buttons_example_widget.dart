import 'package:flutter/material.dart';

class FourButtonsExample extends StatelessWidget {
  const FourButtonsExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF166E16),
            minimumSize: const Size(74.25, 36),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
          child: const Text(
            '1',
            style: TextStyle(color: Colors.white),
          ),
        ),
        Expanded(
          child: Container(
            height: 4,
            color: const Color.fromARGB(168, 157, 185, 199),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(168, 157, 185, 199),
            minimumSize: const Size(74.25, 36),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
          child: const Text(
            '2',
            style: TextStyle(color: Color.fromRGBO(89, 89, 89, 1)),
          ),
        ),
        Expanded(
          child: Container(
            height: 4,
            color: const Color.fromARGB(168, 157, 185, 199),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(168, 157, 185, 199),
            minimumSize: const Size(74.25, 36),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
          child: const Text(
            '3',
            style: TextStyle(color: Color.fromRGBO(89, 89, 89, 1)),
          ),
        ),
        Expanded(
          child: Container(
            height: 4,
            color: const Color.fromARGB(168, 157, 185, 199), //173, 189, 204
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(168, 157, 185, 199),
            minimumSize: const Size(74.25, 36),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
          ),
          child: const Text(
            '4',
            style: TextStyle(color: Color.fromRGBO(89, 89, 89, 1)),
          ),
        ),
      ],
    );
  }
}
