import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  List<String> nombres = [
    "Carlos",
    "Cesar",
    "Alana",
    "Diego",
  ];
  List<Widget> items = [
    Icon(Icons.people),
    Text("Hola"),
    Text("Daniel"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "Listado General",
        ),
      ),
      body: Column(
        // children: items,
        children: [
          Text(nombres[0]),
          Text(nombres[1]),
          Text(nombres[2]),
          Text(nombres[3]),
        ],
      ),
    );
  }
}
