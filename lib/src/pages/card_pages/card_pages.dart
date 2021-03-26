import 'package:P2_EJ1/src/utils/colors.dart';
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
      body: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: subMenu != null ? subMenu.length: 0,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(subMenu[index]["name"]),
                onTap: () {
                  Route route = MaterialPageRoute(builder: (context) {
                    switch (subMenu[index]["route"]) {
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
          Expanded(
            child: _cardt1(),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_left),
      ),
    );
  }

  Widget _cardt1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo, color: CustomColors.primary),
            title: Text('Tarjeta titulada'),
            subtitle: Text(
                'Lorem ipsum dolor sim ammet, nudas merudas elus in victis, in varia potenza'),
          ),
          Row(
            children: <Widget>[
              FlatButton(
                child: Text('Aceptar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
