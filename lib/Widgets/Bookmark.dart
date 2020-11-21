import 'package:flutter/material.dart';

class Bookmark extends StatelessWidget {
  final bool isFavourite;
  Bookmark({@required this.isFavourite});
  @override
  Widget build(BuildContext context) {
    return isFavourite
        ? Container(
            child: const Icon(Icons.bookmark, color: Colors.orange),
            alignment: Alignment.topLeft,
          )
        : const SizedBox.shrink();
  }
}
