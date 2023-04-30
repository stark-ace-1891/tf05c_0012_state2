import 'package:flutter/material.dart';

void main() {
  Laptop pepito = Laptop();
  Laptop daniel = Laptop();
  Laptop julio = Laptop();

  pepito.marca = "Asus";

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
  String marca = "HP";
  String color = "Negro";

  //Metodos
}
