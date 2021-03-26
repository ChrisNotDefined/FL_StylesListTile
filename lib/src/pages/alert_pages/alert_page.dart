import 'package:flutter/material.dart';

import 'alert1_page.dart';
import 'alert2_page.dart';

class AlertPage extends StatelessWidget {
  final List<dynamic> subMenu;

  const AlertPage({Key key, this.subMenu}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Page'),
      ),
      body: ListView.builder(
        itemCount: subMenu != null ? subMenu.length: 0,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(subMenu[index]["name"]),
            onTap: () {
              Route route = MaterialPageRoute(builder: (context) {
                switch (subMenu[index]["route"]) {
                  case 'alert1':
                    return Alert1Page(content: subMenu[index]["content"]);
                    break;
                  case 'alert2':
                    return Alert2Page(content: subMenu[index]["content"]);
                    break;
                  default:
                    return Container();
                    break;
                }
              });

              Navigator.push(context, route);
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_left),
      ),
    );
  }
}
