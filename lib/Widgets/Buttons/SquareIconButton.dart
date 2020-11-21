import 'package:flutter/material.dart';

class SquareButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  SquareButton({@required this.icon, @required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[100],
      shape: RoundedRectangleBorder(
          side: BorderSide(
              color: onPressed == null
                  ? Theme.of(context).disabledColor
                  : Theme.of(context).primaryColor),
          borderRadius: BorderRadius.circular(3)),
      child: IconButton(
        constraints: BoxConstraints(maxHeight: 35, maxWidth: 35),
        icon: Icon(
          icon,
          color: onPressed == null
              ? Theme.of(context).disabledColor
              : Theme.of(context).primaryColor,
          size: 20,
        ),
        onPressed: onPressed,
      ),
    );
  }
}
