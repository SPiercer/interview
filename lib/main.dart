import 'Models/Account.dart';
import 'Providers/Radio.dart';
import 'Screens/Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';

import 'constants.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  accountList.forEach((Account account) =>
      account.isDoctor ? doctorsList.add(account) : patientsList.add(account));
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<RadioProivder>.value(value: RadioProivder()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primaryColor: Color.fromRGBO(101, 116, 207, 1.0),
          accentColor: Color.fromRGBO(125, 138, 214, 1.0),
        ),
        home: HomeScreen(),
      ),
    );
  }
}
