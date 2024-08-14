import 'package:flutter/material.dart';

class CardContainerWidget extends StatefulWidget {
  final String header;
  final Widget child;

  const CardContainerWidget({
    super.key,
    required this.header,
    required this.child,
  });

  @override
  State<CardContainerWidget> createState() => _CardContainerWidgetState();
}

class _CardContainerWidgetState extends State<CardContainerWidget> {
  // Initialize _isExpanded to true to make the card open by default
  bool _isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Column(
        children: <Widget>[
          Container(
            color: const Color(0xFF15422B), // Header background color
            child: ListTile(
              title: Text(
                widget.header,
                style:
                    const TextStyle(color: Colors.white), // Header text color
              ),
              trailing: IconButton(
                icon: Icon(
                  _isExpanded
                      ? Icons.keyboard_arrow_up_sharp
                      : Icons.keyboard_arrow_down,
                  color: const Color(0xFFDCB40D), // Arrow icon color
                ),
                onPressed: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
              ),
            ),
          ),
          AnimatedCrossFade(
            duration: const Duration(milliseconds: 300),
            firstChild: Container(), // Content hidden by default
            secondChild: widget.child,
            crossFadeState: _isExpanded
                ? CrossFadeState.showSecond
                : CrossFadeState.showFirst,
          ),
        ],
      ),
    );
  }
}
