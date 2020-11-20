import 'package:digtalclinic/Models/Account.dart';
import 'package:digtalclinic/constants.dart';
import 'package:flutter/material.dart';

import 'ProfileAvatar.dart';

class AccountCard extends StatefulWidget {
  final Account account;
  AccountCard({this.account});
  @override
  _AccountCardState createState() => _AccountCardState();
}

class _AccountCardState extends State<AccountCard> {
  final String imageUrl =
      'https://images.unsplash.com/photo-1578133671540-edad0b3d689e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80';
  @override
  Widget build(BuildContext context) {
    final Size _screenSize = MediaQuery.of(context).size;
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Container(
        height: _screenSize.height / 4,
        width: _screenSize.width - 50,
        child: Stack(
          children: [
            Container(
              child: Icon(Icons.bookmark, color: Colors.yellow[600]),
              alignment: Alignment.topLeft,
            ),
            Container(
              padding: EdgeInsets.only(left: 10, top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        child: ProfileAvatar(imageUrl: imageUrl),
                      ),
                      Container(
                        //********************** Account Info *******************//
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('John Doe',
                                  style: const TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18)),
                              SizedBox(height: 5),
                              Text('Surgent',
                                  style: const TextStyle(
                                      fontSize: 12.0, color: Colors.grey)),
                              SizedBox(height: 5),
                              Text.rich(TextSpan(
                                  style: const TextStyle(
                                      fontSize: 12.0, color: Colors.grey),
                                  children: [
                                    TextSpan(text: '69Km away'),
                                    WidgetSpan(
                                        alignment: PlaceholderAlignment.middle,
                                        child: Icon(Icons.location_on,
                                            size: 15, color: Colors.grey))
                                  ]))
                            ]),
                      ),
                      Spacer(),
                      //**********************Rating*******************//
                      Container(
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
                                color: primaryColor,
                                size: 18,
                              ),
                              Text(
                                '6.9',
                                style: TextStyle(
                                    fontSize: 15, color: primaryColor),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  //********************** Bottom Row *******************//
                  Row(
                    children: [
                      FlatButton.icon(
                        icon: Icon(
                          Icons.videocam,
                          color: primaryColor,
                          size: 13,
                        ),
                        label: Text(
                          'Video Visit',
                          style: TextStyle(fontSize: 12, color: primaryColor),
                        ),
                        onPressed: () {},
                      ),
                      Spacer(),
                      Card(
                        color: Colors.grey[100],
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: Theme.of(context).disabledColor),
                            borderRadius: BorderRadius.circular(3)),
                        child: IconButton(
                          constraints:
                              BoxConstraints(maxHeight: 35, maxWidth: 35),
                          icon: Icon(
                            Icons.calendar_today,
                            size: 20,
                          ),
                          onPressed: null,
                        ),
                      ),
                      Card(
                        shape: RoundedRectangleBorder(
                            side: BorderSide(color: primaryColor),
                            borderRadius: BorderRadius.circular(3)),
                        child: IconButton(
                          constraints:
                              BoxConstraints(maxHeight: 35, maxWidth: 35),
                          icon: Icon(
                            Icons.chat_bubble_outline,
                            color: primaryColor,
                            size: 20,
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
