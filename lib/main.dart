import 'package:flutter/material.dart';
import 'package:tf05c_0012_state2/person.dart';

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
    "Cesar",
    "Cesar",
    "Cesar",
    "Cesar",
  ];

  // List<Map> people = [
  //   {
  //     "name": "Juan Tapia",
  //     "address": "Av. Lima 123",
  //     "image": "http:....",
  //     "birthDatw": "12/12/1995",
  //   },
  //   {
  //     "name": "Luis Montes",
  //     "address": "Av. Lima 123",
  //     "image": "http:....",
  //     "birthDatw": "12/12/1994",
  //   },
  //   {
  //     "name": "Roxana Maldonado",
  //     "address": "Av. Duran 123",
  //     "image": "http:....",
  //     "birthDatw": "12/12/1997",
  //   },
  // ];
  List<Person> people = [
    Person(
        name: "Juan Tapia",
        address: "Av. Lima 123",
        image: "http:....",
        birthDatw: "12/12/1995"),
    Person(
        name: "Luis Montes",
        address: "Av. Lima 123",
        image: "http:....",
        birthDatw: "12/12/1994"),
    Person(
        name: "Roxana Maldonado",
        address: "Av. Duran 123",
        image: "http:....",
        birthDatw: "12/121997"),
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
        children: [
          ...people
              .map(
                (Person e) => ListTile(
                  title: Text(e.name),
                  subtitle: Text("Hola de nuevo"),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
