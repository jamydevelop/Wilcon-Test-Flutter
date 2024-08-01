import 'package:flutter/material.dart';

class CardPrimary extends StatefulWidget {
  final String title;
  final List<String> rowTitles;
  final List<String> rowContents;

  const CardPrimary({
    super.key,
    required this.title,
    required this.rowTitles,
    required this.rowContents,
  });

  @override
  // ignore: library_private_types_in_public_api
  _CardPrimaryState createState() => _CardPrimaryState();
}

class _CardPrimaryState extends State<CardPrimary> {
  bool _isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: const EdgeInsets.only(top: 12.0), // Add top margin of 12 pixels
        child: Card(
          margin: EdgeInsets.zero, // Remove any external margin
          elevation: 0.0,
          color: const Color.fromRGBO(21, 66, 43, 1),
          shape: RoundedRectangleBorder(
            side: const BorderSide(
              color: Colors.grey, // Color of the outline
              width: 1.0, // Width of the outline
            ),
            borderRadius:
                BorderRadius.circular(4.0), // Optional: adjust if needed
          ),
          child: Column(
            children: [
              ExpansionTile(
                initiallyExpanded: _isExpanded,
                title: Padding(
                  padding: const EdgeInsets.all(
                      12.0), // Padding of 12 pixels around the title
                  child: Text(
                    widget.title,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.only(
                      right: 12.0), // Add 12 pixels of padding on the right
                  child: AnimatedRotation(
                    turns: _isExpanded ? 0.5 : 0.0,
                    duration: const Duration(milliseconds: 200),
                    child: const Icon(
                      Icons.expand_more,
                      color: Colors.yellow,
                    ),
                  ),
                ),
                tilePadding: EdgeInsets.zero, // Remove padding around the tile
                childrenPadding:
                    EdgeInsets.zero, // Remove padding around the children
                backgroundColor: Colors.transparent,
                onExpansionChanged: (bool expanded) {
                  setState(() {
                    _isExpanded = expanded;
                  });
                },
                children: <Widget>[
                  if (_isExpanded) ...[
                    Container(
                      color: Colors.transparent,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(
                          widget.rowTitles.length,
                          (index) => Container(
                            color:
                                index.isEven ? Colors.white : Colors.grey[200],
                            child: Row(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12.0,
                                      horizontal: 8.0,
                                    ),
                                    child: Text(
                                      widget.rowTitles[index],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                      vertical: 12.0,
                                      horizontal: 8.0,
                                    ),
                                    child: Text(
                                      widget.rowContents[index],
                                      style: const TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
