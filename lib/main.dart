import 'package:flutter/material.dart';

void main() {
  Laptop pepito = Laptop("Asus", "Azul");
  print(pepito);
  print(pepito.color);
  pepito.encender();

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
  Laptop(this.marca, this.color);

  //Metodos
  void encender() {
    print("Encendiendo Laptop");
  }
}
