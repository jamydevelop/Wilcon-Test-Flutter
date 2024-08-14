import 'package:flutter/material.dart';

class MeterCardContainerWidget extends StatefulWidget {
  final String header;
  final Widget child;

  const MeterCardContainerWidget({
    super.key,
    required this.header,
    required this.child,
  });

  @override
  State<MeterCardContainerWidget> createState() =>
      _MeterCardContainerWidgetState();
}

class _MeterCardContainerWidgetState extends State<MeterCardContainerWidget> {
  // Initialize _isExpanded to true to make the card open by default
  bool _isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
            top: Radius.circular(8.0)), // Rounded only at the top
      ),
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
