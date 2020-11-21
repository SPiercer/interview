import 'package:flutter/material.dart';

class AccountRating extends StatelessWidget {
  final String rating;
  AccountRating({@required this.rating});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.only(bottom: 50),
      alignment: Alignment.topCenter,
      child: Card(
        color: Colors.deepPurple[50],
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Icon(
              Icons.star,
              color: Theme.of(context).primaryColor,
              size: 18,
            ),
            Text(
              rating,
              style: TextStyle(
                  fontSize: 15, color: Theme.of(context).primaryColor),
            )
          ],
        ),
      ),
    );
  }
}
