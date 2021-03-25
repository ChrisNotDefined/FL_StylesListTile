import 'package:flutter/material.dart';

import 'card1_page.dart';
import 'card2_page.dart';

class CardPage extends StatelessWidget {
  final List<dynamic> subMenu;

  const CardPage({Key key, this.subMenu}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView.builder(
        itemCount: subMenu.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(subMenu[index]["name"]),
            onTap: () {
              Route route = MaterialPageRoute(builder: (context){
                switch (subMenu[index]["route"]){
                  case 'card1':
                    return Card1Page(content: subMenu[index]["content"]);
                    break;
                  case 'card2':
                    return Card2Page(content: subMenu[index]["content"]);
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
    );
  }
}
