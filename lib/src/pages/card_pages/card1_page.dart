import 'package:flutter/material.dart';

class Card1Page extends StatelessWidget {
  final String content;

  const Card1Page({Key key, this.content}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card 1 Page'),
      ),
      body: Center(
        child: Text(content),
      ),
    );
  }
}
