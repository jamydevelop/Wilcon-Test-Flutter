import 'package:flutter/material.dart';

class ExpandableCard extends StatefulWidget {
  final String title;
  final List<String> rowTitles;
  final List<String> rowContents;

  const ExpandableCard({
    super.key,
    required this.title,
    required this.rowTitles,
    required this.rowContents,
  });

  @override
  // ignore: library_private_types_in_public_api
  _ExpandableCardState createState() => _ExpandableCardState();
}

class _ExpandableCardState extends State<ExpandableCard> {
  bool _isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Card(
        margin: EdgeInsets.zero, // Remove any external margin
        elevation: 0.0,
        color: const Color.fromRGBO(21, 66, 43, 1),
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
                          color: index.isEven ? Colors.white : Colors.grey[200],
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
    );
  }
}
