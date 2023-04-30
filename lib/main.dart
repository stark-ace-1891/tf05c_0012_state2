import 'package:flutter/material.dart';

void main() {
  Laptop pepito = Laptop("HP", "Negro");
  Laptop daniel = Laptop("Asus", "Azul");
  Laptop julio = Laptop("HP", "Verde");

  print(pepito.marca);
  print(daniel.marca);
  print(julio.marca);

  runApp(
    MaterialApp(
      color: Colors.redAccent,
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
}
