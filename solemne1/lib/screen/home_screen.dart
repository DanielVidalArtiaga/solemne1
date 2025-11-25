import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sitios del Gobierno'),
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          _menuItem(context, 'Cancillería de Chile', 'cancilleria'),
          _menuItem(context, 'Cooperativa', 'cooperativa'),
          _menuItem(context, 'Hoy.cl', 'hoy'),
          _menuItem(context, 'SAG', 'sag'),
          _menuItem(context, 'Visitar Chile', 'visitar'),
        ],
      ),
    );
  }

  Widget _menuItem(BuildContext context, String title, String route) {
    return Card(
      margin: const EdgeInsets.all(10),
      child: ListTile(
        title: Text(title),
        trailing: const Icon(Icons.arrow_forward_ios),
        onTap: () {
          Navigator.pushNamed(context, route);
        },
      ),
    );
  }
}
