import 'package:digtalclinic/constants.dart';
import 'package:flutter/material.dart';

import 'CircleButton.dart';

class SortBottomSheet extends StatefulWidget {
  @override
  _SortBottomSheetState createState() => _SortBottomSheetState();
}

class _SortBottomSheetState extends State<SortBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return BottomSheet(
      elevation: 50.0,
      onClosing: () {},
      builder: (BuildContext context) {
        return Container(
          height: MediaQuery.of(context).size.height / 4 + 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlatButton(
                    onPressed: () {},
                    child: Text('Clear',style: TextStyle(color: Colors.grey,fontSize: 12.0))
                  ),
                  Text('Sort By',style: TextStyle(fontWeight: FontWeight.bold),),
                  FlatButton(
                    onPressed: () {},
                    child: Text('Done',style: TextStyle(color: Colors.grey,fontSize: 12.0)),
                  ),
                ],
              ),
              Divider(),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                Card(
                  color: Colors.grey[100],
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: primaryColor),
                      borderRadius: BorderRadius.circular(3)),
                  child: CircleButton(
                    onPressed: () {},
                    icon: Icons.location_on,
                    iconSize: 25,
                    label: 'Distance',
                  ),
                ),
                Card(
                  color: Colors.grey[100],
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: primaryColor),
                      borderRadius: BorderRadius.circular(3)),
                  child: CircleButton(
                    onPressed: () {},
                    icon: Icons.star,
                    iconSize: 25,
                    label: 'Rating',
                  ),
                ),
                Card(
                  color: Colors.grey[100],
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: primaryColor),
                      borderRadius: BorderRadius.circular(3)),
                  child: CircleButton(
                    onPressed: () {},
                    icon: Icons.attach_money_outlined,
                    iconSize: 25,
                    label: 'Fees',
                  ),
                ),
              ]),
              Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: RaisedButton.icon(
                  color: primaryColor,
                  icon: Icon(Icons.filter_alt, color: Colors.white),
                  onPressed: () {},
                  label: const Text(
                    'ADVANCED FILTERING',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
