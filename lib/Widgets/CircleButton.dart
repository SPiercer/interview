import 'package:digtalclinic/constants.dart';
import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final IconData icon;
  final double iconSize;
  final VoidCallback onPressed;
  final String label;

  const CircleButton({
    @required this.icon,
    @required this.iconSize,
    @required this.onPressed,
    @required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            margin: const EdgeInsets.all(6.0),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: Icon(icon),
              iconSize: iconSize,
              color: primaryColor,
              onPressed: onPressed,
            ),
          ),
          Text(label)
        ],
      ),
    );
  }
}
