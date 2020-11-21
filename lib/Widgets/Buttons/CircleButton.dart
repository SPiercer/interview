import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  final bool isSelected;
  final IconData icon;
  final double iconSize;
  final VoidCallback onPressed;
  final String label;

  CircleButton({
    @required this.isSelected,
    @required this.icon,
    @required this.iconSize,
    @required this.onPressed,
    @required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(18.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(3),
          border: Border.all(
              color: isSelected
                  ? Theme.of(context).primaryColor
                  : Theme.of(context).disabledColor),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                margin: const EdgeInsets.all(6.0),
                child: Icon(icon,
                    size: iconSize,
                    color: isSelected
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).disabledColor)),
            const SizedBox(height: 8.0),
            Text(label)
          ],
        ),
      ),
    );
  }
}
