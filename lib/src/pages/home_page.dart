import 'package:P2_EJ1/src/providers/menu_provider.dart';
import 'package:P2_EJ1/src/utils/colors.dart';
import 'package:P2_EJ1/src/utils/icono_string_util.dart';
import 'package:flutter/material.dart';

import 'alert_pages/alert_page.dart';
import 'avatar_pages/avatar_page.dart';
import 'card_pages/card_pages.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Componentes"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    // Future Builder
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _listaItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _listaItems(List<dynamic> data, BuildContext context) {
    final List<Widget> opciones = [];

    data.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['text']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: CustomColors.primary),
        onTap: () {
          Route route = MaterialPageRoute(builder: (context) {
            switch (opt['ruta']) {
              case 'alert':
                return AlertPage(subMenu: opt['subMenu']);
                break;
              case 'avatar':
                return AvatarPage(subMenu: opt['subMenu']);
                break;
              case 'card':
                return CardPage(subMenu: opt['subMenu']);
              default:
                return Container();
                break;
            }
          });
          Navigator.pushNamed(context, opt['ruta']);
        },
      );
      opciones..add(widgetTemp)..add(Divider());
    });
    return opciones;
  }
}
