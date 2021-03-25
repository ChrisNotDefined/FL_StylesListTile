import 'package:flutter/material.dart';

class Avatar2Page extends StatelessWidget {
  final String content;

  const Avatar2Page({Key key, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar 2 Page'),
      ),
      body: Center(
        child: Text(content),
      ),
    );
  }
}
