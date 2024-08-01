import 'package:flutter/material.dart';

class HeaderBar extends StatelessWidget {
  final String text;
  final bool isYellow;

  const HeaderBar({super.key, required this.text, required this.isYellow});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 14.0, horizontal: 12.0),
      decoration: BoxDecoration(
        color: isYellow
            ? const Color.fromRGBO(250, 206, 23, 1) // #FACE17
            : const Color.fromRGBO(21, 66, 43, 1), // #15422B
        borderRadius: BorderRadius.circular(8.0), // Adjust the radius as needed
      ),
      child: text == "Notifications"
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: isYellow ? Colors.black : Colors.white,
                    fontSize: 16.0,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0, vertical: 8.0),
                  decoration: BoxDecoration(
                    color: const Color(0xFFFDDDD3),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Text(
                    '4 New Notifications',
                    style: TextStyle(
                      color: isYellow ? Colors.black : const Color(0xFF61220F),
                      fontSize: 12.0,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ],
            )
          : Text(
              text,
              style: TextStyle(
                color: isYellow ? Colors.black : Colors.white,
                fontSize: 16.0,
                fontWeight: FontWeight.w700,
              ),
            ),
    );
  }
}
