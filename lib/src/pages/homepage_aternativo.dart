import 'package:P2_EJ1/src/components/StyledListTile.dart';
import 'package:flutter/material.dart';

class HomePageAlternativo extends StatelessWidget {
  final opciones = [
    {
      "title": 'Uno',
      "desc": "Este es 1",
      "trailing": Icons.keyboard_arrow_right,
      "leading": Icons.access_alarm
    },
    {
      "title": 'Dos',
      "desc": "Este es 2",
      "trailing": Icons.keyboard_arrow_left,
      "leading": Icons.ac_unit_sharp
    },
    {
      "title": 'Tres',
      "desc": "Este es 3",
      "trailing": Icons.keyboard_arrow_down,
      "leading": Icons.accessible_forward_sharp
    },
  ];
  final List opciones_detail = [
    'Sólo Una cosa',
    'perros',
    'gatos',
    'hamsters',
    'ratones',
    'loros',
    'peces',
    'borregos'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List Tile'),
        backgroundColor: Colors.redAccent,
      ),
      body: ListView(
        children: _crearItemsCorto(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista =
        new List<Widget>(); // Creacion de lista dinámica sin tamaño

    for (var opt in opciones) {
      final tempoWidget = ListTile(
          //title: Text(opt),
          );

      // lista.add(tempoWidget);
      // lista.add(Divider());

      lista..add(tempoWidget)..add(Divider());
    }

    return lista;
  }

  List<Widget> _crearItemsCorto() {
    return opciones.map((item) {
      return Column(
        children: [
          StyledListTile(
            title: item['title'],
            description: item['desc'],
            leading: item['leading'],
            trailing: item['trailing'],
            onTap: () {},
          ),
        ],
      );
    }).toList();
  }
}
