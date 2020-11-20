import 'package:digtalclinic/Widgets/AccountCard.dart';
import 'package:digtalclinic/Widgets/SortBottomSheet.dart';
import 'package:digtalclinic/constants.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: primaryColor,
            title: Text(
                //TODO: add variable of the sort
                'All Accounts',
                style: const TextStyle(
                    fontSize: 24.0, fontWeight: FontWeight.bold)),
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
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.white54,
                      ),
                      focusedBorder: whiteBorder,
                      enabledBorder: whiteBorder,
                      fillColor: accentColor,
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
                    child: Icon(Icons.filter_alt)),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10.0),
                child: Icon(Icons.location_on),
              ),
            ],
          ),
          SliverToBoxAdapter(
              child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                child: Text(
                  'Account List',
                  style: TextStyle(fontSize: 15.5),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10.0, right: 10.0),
                child: Text.rich(
                  TextSpan(children: [
                    TextSpan(text: 'Card View '),
                    WidgetSpan(
                      alignment: PlaceholderAlignment.middle,
                      child:
                          Icon(Icons.view_quilt, size: 17, color: Colors.grey),
                    ),
                  ]),
                  style: TextStyle(fontSize: 12.0, color: Colors.grey),
                ),
              ),
            ],
          )),
          SliverList(
            delegate: SliverChildListDelegate(
                List<AccountCard>.generate(5, (index) => AccountCard())),
          )
        ],
      ),
    );
  }
}
