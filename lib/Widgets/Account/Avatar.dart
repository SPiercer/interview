import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class AccountAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isAvailable;
  AccountAvatar({@required this.imageUrl, @required this.isAvailable});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Stack(
        children: [
          CachedNetworkImage(
            imageUrl: imageUrl,
            imageBuilder: (BuildContext context, ImageProvider imageProvider) =>
                CircleAvatar(
                    radius: 30.0,
                    backgroundColor: Colors.grey[200],
                    backgroundImage: imageProvider),
          ),
          isAvailable
              ? Positioned(
                  bottom: -2.0,
                  right: 5.0,
                  child: Container(
                    height: 18.0,
                    width: 18.0,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: 2.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              : const SizedBox.shrink()
        ],
      ),
    );
  }
}
