import 'package:P2_EJ1/src/utils/colors.dart';
import 'package:flutter/material.dart';
import 'src/pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List Tiles App',
      theme: ThemeData(primaryColor: CustomColors.primary),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
