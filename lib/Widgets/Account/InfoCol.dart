import 'package:flutter/material.dart';

class AccountInfoColumn extends StatelessWidget {
  final String name;
  final String speciality;
  final String distance;
  AccountInfoColumn(
      {@required this.distance,
      @required this.speciality,
      @required this.name});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        const SizedBox(height: 5),
        Text(speciality,
            style: const TextStyle(fontSize: 12.0, color: Colors.grey)),
        const SizedBox(height: 5),
        Text.rich(TextSpan(
            style: const TextStyle(fontSize: 12.0, color: Colors.grey),
            children: [
              TextSpan(text: distance + 'Km away'),
              const WidgetSpan(
                  alignment: PlaceholderAlignment.middle,
                  child: Icon(Icons.location_on, size: 15, color: Colors.grey))
            ]))
      ]),
    );
  }
}
