import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/Radio.dart';
import 'Buttons/CircleButton.dart';

class SortBottomSheet extends StatelessWidget {
  final List<String> accountNames = ['Show All', 'Doctors', 'Patients'];
  @override
  Widget build(BuildContext context) {
    RadioProivder radioProvider = Provider.of<RadioProivder>(context);

    return BottomSheet(
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
                      child: const Text('Clear',
                          style:
                              TextStyle(color: Colors.grey, fontSize: 12.0))),
                  const Text(
                    'Sort By',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  FlatButton(
                    onPressed: () => Navigator.pop(context),
                    child: const Text('Done',
                        style: TextStyle(color: Colors.grey, fontSize: 12.0)),
                  ),
                ],
              ),
              const Divider(),
              Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: List.generate(
                      3,
                      (index) => CircleButton(
                            isSelected: radioProvider.isSelected[index],
                            onPressed: () {
                              radioProvider.toggle(index);
                            },
                            icon: Icons.star,
                            iconSize: 25,
                            label: accountNames[index],
                          ))),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 18.0),
                child: RaisedButton.icon(
                  color: Theme.of(context).primaryColor,
                  icon: const Icon(Icons.filter_alt, color: Colors.white),
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
