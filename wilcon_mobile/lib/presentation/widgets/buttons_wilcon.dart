import 'package:flutter/material.dart';

class ButtonsWilcon extends StatefulWidget {
  const ButtonsWilcon({super.key});

  @override
  State<ButtonsWilcon> createState() => _ButtonsWilconState();
}

class _ButtonsWilconState extends State<ButtonsWilcon> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        centerTitle: true,
        title: const Text(
          'Wilcon Buttons',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // TextButton(
            //   style: TextButton.styleFrom(
            //     padding:
            //         const EdgeInsets.symmetric(vertical: 16, horizontal: 0),
            //     backgroundColor: Colors.transparent,
            //     shape: const RoundedRectangleBorder(
            //       borderRadius: BorderRadius.only(
            //         topLeft: Radius.circular(4.0),
            //       ),
            //     ),
            //   ),
            //   onPressed: () {
            //     print('Button Pressed');
            //   },
            //   child: const Row(
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       Icon(Icons.star, size: 16, color: Colors.blue), // Left Icon
            //       SizedBox(width: 8), // Space between icon and text
            //       Text(
            //         'Press Me',
            //         style: TextStyle(color: Colors.blue),
            //       ),
            //       SizedBox(width: 8), // Space between text and icon
            //       Icon(Icons.arrow_forward,
            //           size: 16, color: Colors.blue), // Right Icon
            //     ],
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green, // Background color
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12.0), // Button padding
                  fixedSize: const Size(162, 52), // Button size
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4.0), // Button shape
                  ),
                ),
                onPressed: () {
                  // Action when button is pressed
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.menu_sharp,
                      size: 16.0, // Icon size
                      color: Colors.white, // Icon color
                    ),
                    SizedBox(width: 8.0), // Space between icon and text
                    Text(
                      "Button text",
                      style: TextStyle(
                        fontFamily: 'Open Sans',
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        height: 20.0 /
                            14.0, // Line height as a multiple of font size
                        letterSpacing: 0.0125,
                        color: Colors.white, // Text color
                      ),
                    ),
                    SizedBox(width: 8.0), // Space between text and right icon
                    Icon(
                      Icons.check_circle,
                      size: 16.0, // Icon size
                      color: Colors.white, // Icon color
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ButtonStyle(
                    fixedSize: WidgetStateProperty.all<Size>(
                      const Size(154.0, 44.0), // Button width and height
                    ),
                    foregroundColor:
                        WidgetStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.green),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0)))),
                onPressed: () {},
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.menu_sharp,
                      size: 16,
                    ), // Left Icon
                    SizedBox(width: 8), // Space between icon and text
                    Text('Button'),
                    SizedBox(width: 8), // Space between text and icon
                    Icon(
                      Icons.menu_sharp,
                      size: 16,
                    ), // Right Icon
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ButtonStyle(
                    fixedSize: WidgetStateProperty.all<Size>(
                      const Size(146.0, 36.0), // Button width and height
                    ),
                    foregroundColor:
                        WidgetStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.green),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0)))),
                onPressed: () {},
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.menu_sharp,
                      size: 16,
                    ), // Left Icon
                    SizedBox(width: 8), // Space between icon and text
                    Text('Button'),
                    SizedBox(width: 8), // Space between text and icon
                    Icon(
                      Icons.menu_sharp,
                      size: 16,
                    ), // Right Icon
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ButtonStyle(
                    foregroundColor:
                        WidgetStateProperty.all<Color>(Colors.green),
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.white),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0)))),
                onPressed: () {},
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.menu_sharp,
                      size: 16,
                    ), // Left Icon
                    SizedBox(width: 8), // Space between icon and text
                    Text('Button Text'),
                    SizedBox(width: 8), // Space between text and icon
                    Icon(Icons.menu_sharp, size: 16), // Right Icon
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ButtonStyle(
                    fixedSize: WidgetStateProperty.all<Size>(
                      const Size(162.0, 52.0), // Button width and height
                    ),
                    foregroundColor:
                        WidgetStateProperty.all<Color>(Colors.green),
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.white),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0)))),
                onPressed: () {},
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.menu_sharp,
                      size: 16,
                    ), // Left Icon
                    SizedBox(width: 8), // Space between icon and text
                    Text('Button'),
                    SizedBox(width: 8), // Space between text and icon
                    Icon(Icons.check_circle, size: 16), // Right Icon
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                style: ButtonStyle(
                    foregroundColor:
                        WidgetStateProperty.all<Color>(Colors.green),
                    backgroundColor:
                        WidgetStateProperty.all<Color>(Colors.grey.shade300),
                    shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4.0)))),
                onPressed: () {},
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.menu_sharp,
                      size: 16,
                    ), // Left Icon
                    SizedBox(width: 8), // Space between icon and text
                    Text('Button Text'),
                    SizedBox(width: 8), // Space between text and icon
                    Icon(Icons.menu_sharp, size: 16), // Right Icon
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
