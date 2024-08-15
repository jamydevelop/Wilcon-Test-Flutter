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
  bool _isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4.0),
      ),
      child: Column(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              color: Color(0xFF15422B),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(4.0),
                topRight: Radius.circular(4.0),
              ),
            ),
            child: ListTile(
              title: Text(
                widget.header,
                style: const TextStyle(color: Colors.white),
              ),
              trailing: IconButton(
                icon: Icon(
                  _isExpanded
                      ? Icons.keyboard_arrow_up_sharp
                      : Icons.keyboard_arrow_down,
                  color: const Color(0xFFDCB40D),
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
            firstChild: Container(),
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
