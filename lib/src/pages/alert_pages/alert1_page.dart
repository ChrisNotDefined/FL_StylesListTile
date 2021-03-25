import 'package:flutter/material.dart';

class Alert1Page extends StatelessWidget {
  final String content;

  const Alert1Page({Key key, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert 1 Page'),
      ),
      body: Center(
        child: Text(content),
      ),
    );
  }
}
