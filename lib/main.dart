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

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> nombres = [
    "Cesar",
    "Cesar",
    "Cesar",
    "Cesar",
  ];

  // List<Map> people = [
  List<Person> people = [
    Person(
        name: "Juan Tapia",
        address: "Av. Lima 123",
        image: "persona1.jpeg",
        birthDatw: "12/12/1995"),
    Person(
        name: "Luis Montes",
        address: "Av. Lima 123",
        image: "persona2.jpeg",
        birthDatw: "12/12/1994"),
    Person(
        name: "Roxana Maldonado",
        address: "Av. Duran 123",
        image: "persona3.jpeg",
        birthDatw: "12/121997"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Person person = Person(
            name: "Ana Paola Rosas",
            address: "Av. Caima 123",
            birthDatw: "01/01/1980",
            image: "persona1.jpeg",
          );
          people.add(person);
          setState(() {});
        },
      ),
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
                  leading: CircleAvatar(
                    // backgroundImage: NetworkImage(e.image),
                    backgroundImage: AssetImage('assets/images/${e.image}'),
                  ),
                ),
              )
              .toList(),
        ],
      ),
    );
  }
}
