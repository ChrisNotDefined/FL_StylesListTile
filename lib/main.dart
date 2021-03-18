import 'package:flutter/material.dart';

import 'src/pages/homepage_aternativo.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'List Tiles App',
        theme: new ThemeData(scaffoldBackgroundColor: const Color(0xFFFFCDD2)),
        debugShowCheckedModeBanner: false,
        home: HomePageAlternativo());
  }
}
