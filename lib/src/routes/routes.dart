import 'package:flutter/material.dart';


import 'package:P2_EJ1/src/pages/alert_pages/alert_page.dart';
import 'package:P2_EJ1/src/pages/avatar_pages/avatar_page.dart';
import 'package:P2_EJ1/src/pages/card_pages/card_pages.dart';
import 'package:P2_EJ1/src/pages/home_page.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
  };
}
