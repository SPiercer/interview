import '../Providers/Radio.dart';
import '../Widgets/Header.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Models/Account.dart';
import '../Widgets/Account/Card.dart';
import '../Widgets/SliverAppBar.dart';
import '../constants.dart';

class HomeScreen extends StatelessWidget {
  final List<List<Account>> accountTypesList = [
    accountList,
    doctorsList,
    patientsList
  ];
  @override
  Widget build(BuildContext context) {
    int index = Provider.of<RadioProivder>(context).index;
    List<Account> accountList = accountTypesList[index];
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppbar(
            title: accountTypesList[index] == doctorsList
                ? 'All Doctors'
                : accountTypesList[index] == patientsList
                    ? 'All Patients'
                    : 'All Accounts',
          ),
          Header(
              type: accountTypesList[index] == doctorsList
                  ? 'Doctors'
                  : accountTypesList[index] == patientsList
                      ? 'Patients'
                      : 'Accounts'),
          SliverList(
            delegate: SliverChildListDelegate(
                List<AccountCard>.generate(accountTypesList[index].length, (i) {
              return AccountCard(
                account: accountList[i],
              );
            })),
          )
        ],
      ),
    );
  }
}
