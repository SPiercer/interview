import 'package:flutter/material.dart';

import '../constants.dart';
import 'SortBottomSheet.dart';

class SliverAppbar extends StatelessWidget {
  final String title;
  SliverAppbar({@required this.title});
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      brightness: Brightness.light,
      backgroundColor: Theme.of(context).primaryColor,
      title: Text(title,
          style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
      floating: true,
      centerTitle: false,
      snap: true,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(30),
        child: Container(
          padding: EdgeInsets.only(bottom: 10.0, top: 10.0),
          height: 55,
          width: MediaQuery.of(context).size.width - 30,
          child: TextField(
            textAlignVertical: TextAlignVertical.bottom,
            style: const TextStyle(color: Colors.white54),
            decoration: InputDecoration(
                hintText: 'Search by category',
                hintStyle: const TextStyle(color: Colors.white54),
                suffixIcon: const Icon(
                  Icons.search,
                  color: Colors.white54,
                ),
                focusedBorder: whiteBorder,
                enabledBorder: whiteBorder,
                fillColor: Theme.of(context).accentColor,
                filled: true),
          ),
        ),
      ),
      actions: [
        Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: InkWell(
                onTap: () => showModalBottomSheet(
                    context: context, builder: (ctx) => SortBottomSheet()),
                child: Icon(Icons.filter_alt))),
        const Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(Icons.location_on)),
      ],
    );
  }
}
