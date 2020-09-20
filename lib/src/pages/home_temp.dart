import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final options = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('componentes Temp'),
      ),
      body: ListView(children: _createShortItems()),
    );
  }

  List<Widget> _createItems() {
    List<Widget> listWidgets = new List<Widget>();

    for (var opt in options) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      listWidgets..add(tempWidget)..add(Divider());
    }

    return listWidgets;
  }

  List<Widget> _createShortItems() {
    return options.map((item) {
      return Column(
        children: <Widget>[
          ListTile(
            title: Text(item),
            subtitle: Text('subtitulo'),
            leading: Icon(Icons.account_box),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    }).toList();
  }
}
