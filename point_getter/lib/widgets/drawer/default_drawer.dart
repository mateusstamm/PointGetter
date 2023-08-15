import 'package:flutter/material.dart';

class DefaultDrawer extends StatelessWidget {
  const DefaultDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text('Menu'),
          ),
          ListTile(
            title: Text('Opção 1'),
            onTap: () {
              // Ação quando a Opção 1 for selecionada
            },
          ),
          ListTile(
            title: Text('Opção 2'),
            onTap: () {
              // Ação quando a Opção 2 for selecionada
            },
          ),
          // Adicione mais opções conforme necessário
        ],
      ),
    );
  }
}
