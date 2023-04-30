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

  Telefono miTelefono = Telefono(marca: "Motorola", numero: 9696585852);

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

class Telefono {
  String marca;
  int numero;
  Telefono({required this.marca, required this.numero});
}
