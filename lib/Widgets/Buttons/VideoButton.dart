import 'package:flutter/material.dart';

class VideoButton extends StatelessWidget {
  final bool isAvailable;
  VideoButton({@required this.isAvailable});

  @override
  Widget build(BuildContext context) {
    return FlatButton.icon(
      icon: Icon(
        isAvailable ? Icons.videocam : Icons.videocam_off,
        color: isAvailable
            ? Theme.of(context).primaryColor
            : Theme.of(context).disabledColor,
        size: 15,
      ),
      label: Text(
        'Video Visit',
        style: TextStyle(
            fontSize: 13,
            color: isAvailable
                ? Theme.of(context).primaryColor
                : Theme.of(context).disabledColor),
      ),
      onPressed: () {},
    );
  }
}
