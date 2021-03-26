import 'package:flutter/material.dart';

import 'package:P2_EJ1/src/routes/routes.dart';
import 'package:P2_EJ1/src/utils/colors.dart';

import 'src/pages/alert_pages/alert_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Tiles App',
      theme: ThemeData(primaryColor: CustomColors.primary),
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: '/',
      routes: getApplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Rutea: ${settings.name}');
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertPage(),
        );
      },
    );
  }
}
