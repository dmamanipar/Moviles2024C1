import 'package:flutter/material.dart';
import 'package:flutter_dart_basico/ejclaseabstracta.dart';

void main() {
  var objH = Heroe(nombre: 'David');
  print(objH.toString());

  var dd = new Gato();
  dd.comer();
}

//Ejemplo de Clase
class Heroe {
  String nombre;
  String? poder;

  Heroe({required this.nombre});

  String toString() {
    return 'Heroe: nombre: ${this.nombre}';
  }
}
