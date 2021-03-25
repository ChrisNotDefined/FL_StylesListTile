import 'package:flutter/material.dart';

class Card2Page extends StatelessWidget {
  final String content;

  const Card2Page({Key key, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Card 2 Page'),
        ),
        body: Center(
          child: Text(content),
        ));
  }
}
