import 'package:flutter/material.dart';

class Alert2Page extends StatelessWidget {
  final String content;

  const Alert2Page({Key key, this.content}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert 2 Page'),
      ),
      body: Center(
        child: Text(content),
      ),
    );
  }
}
