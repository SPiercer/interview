import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final String type;
  Header({this.type});
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10.0),
          child: Text(
            '$type List',
            style: const TextStyle(fontSize: 15.5),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10.0, right: 10.0),
          child: Text.rich(
            TextSpan(children: [
              TextSpan(text: 'Card View '),
              WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Icon(Icons.view_quilt, size: 17, color: Colors.grey),
              ),
            ]),
            style: TextStyle(fontSize: 12.0, color: Colors.grey),
          ),
        ),
      ],
    ));
  }
}
