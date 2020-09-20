import 'package:components/src/pages/alert_page.dart';
import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/utils/icon_string_util.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componentes'),
      ),
      body: _listComponents(),
    );
  }

  Widget _listComponents() {
    return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        print(snapshot.data);
        return ListView(
          children: _createListComponentItems(snapshot.data, context),
        );
      },
    );
  }

  List<Widget> _createListComponentItems(
      List<dynamic> items, BuildContext context) {
    final List<Widget> options = [];

    items.forEach((opt) {
      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt['icon']),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: () {
          Navigator.pushNamed(context, opt['ruta']);
          /*
          final route = MaterialPageRoute(builder: (context) => AlertPage());
          Navigator.push(context, route);
          */
        },
      );
      options.add(widgetTemp);
    });
    return options;
  }
}
