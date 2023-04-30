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
    List<int> aux = [100, 200, 300];
    List<int> numeros = [1, 2, 3, 4, ...aux, 1000];
    print(numeros);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        title: Text(
          "Listado General",
        ),
      ),
      body: Column(
        children: [
          Text("Inicio de la lista"),
          Text("Inicio de la lista"),
          Text("Inicio de la lista"),
          ...List.generate(
            nombres.length,
            (index) => Text(
              nombres[index],
            ),
          ),
          Text("Fin de la lista"),
        ],
      ),
    );
  }
}
