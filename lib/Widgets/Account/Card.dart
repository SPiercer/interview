import 'package:flutter/material.dart';

import '../../Models/Account.dart';
import '../../Widgets/Buttons/VideoButton.dart';
import '../Bookmark.dart';
import '../Buttons/SquareIconButton.dart';
import 'Avatar.dart';
import 'InfoCol.dart';
import 'Rating.dart';

class AccountCard extends StatelessWidget {
  final Account account;
  AccountCard({this.account});
  @override
  Widget build(BuildContext context) {
    final Size _screenSize = MediaQuery.of(context).size;
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Container(
        height: _screenSize.height / 4,
        width: _screenSize.width * 0.86,
        child: Stack(
          children: [
            Bookmark(isFavourite: account.isFavourite),
            Container(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      AccountAvatar(
                          imageUrl: account.imgPath,
                          isAvailable: account.isAvailable),
                      AccountInfoColumn(
                          name: account.name,
                          distance: account.distance.toString(),
                          speciality: account.speciality),
                      const Spacer(),
                      AccountRating(rating: account.rating.toString())
                    ],
                  ),
                  const Spacer(),
                  //********************** Bottom Row *******************//
                  Row(
                    children: [
                      VideoButton(isAvailable: account.isAvailable),
                      const Spacer(),
                      SquareButton(onPressed: null, icon: Icons.calendar_today),
                      SquareButton(
                          onPressed: () {}, icon: Icons.chat_bubble_outline)
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
