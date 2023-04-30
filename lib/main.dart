import 'package:flutter/material.dart';

void main() {
  Laptop pepito = Laptop(
    color: "Azus",
    marca: "Azul",
  );
  Laptop juan = Laptop(
    color: "Azus",
    marca: "Azul",
  );
  print(pepito);
  print(pepito.color);

  // List<Laptop> laptops = [
  //   pepito,
  //   juan,
  //   Laptop(
  //     color: "Azus",
  //     marca: "Dell",
  //   )
  // ];

  List<Laptop> laptops = [];
  List<int> numeros = [10, 20, 30, 40];

  laptops.add(pepito);
  laptops.add(juan);
  laptops.add(Laptop(
    color: "Azus",
    marca: "Dell",
  ));

  print(laptops);

  for (int item in numeros) {
    print(item + 1000);
  }

  numeros.forEach((element) {
    print(element);
  });

  laptops.forEach((item) {
    print(item.marca);
  });

  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.redAccent,
      ),
    ),
  );
}

class Laptop {
  //Atributos
  String marca;
  String color;

  //Constructor
  Laptop({required this.marca, required this.color});

  //Metodos
  void encender() {
    print("Encendiendo Laptop");
  }
}
