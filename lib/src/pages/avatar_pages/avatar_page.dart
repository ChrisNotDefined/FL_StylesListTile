import 'package:flutter/material.dart';

import 'avatar1_page.dart';
import 'avatar2_page.dart';

class AvatarPage extends StatelessWidget {
  final List<dynamic> subMenu;
  const AvatarPage({Key key, this.subMenu}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Avatar Page'),
        ),
        body: ListView.builder(
          itemCount: subMenu.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(subMenu[index]['name']),
              onTap: () {
                Route route = MaterialPageRoute(builder: (context) {
                switch (subMenu[index]["route"]) {
                  case 'avatar1':
                    return Avatar1Page(content: subMenu[index]["content"]);
                    break;
                  case 'avatar2':
                    return Avatar2Page(content: subMenu[index]["content"]);
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
        ));
  }
}
