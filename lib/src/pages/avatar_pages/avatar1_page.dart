import 'package:flutter/material.dart';

class Avatar1Page extends StatelessWidget {
  final String content;

  const Avatar1Page({Key key, this.content}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar 1 Page'),
      ),
      body: Center(
        child: Text(content),
      ),
    );
  }
}
