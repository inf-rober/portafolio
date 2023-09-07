import 'dart:math' as math;

void main(List<String> args) {
  // JSON = JavaScript Object Notation
  final Map<String, String> rawJson = {
    'especie': 'Peces',
  };

  final peces = Animales.fromJson(rawJson);
  print(peces);

  // Animales reptiles = Animales(especie: 'Reptiles');
  // print(reptiles);

  final circulo = Circulo();
  circulo.areaCirculo =
      5.6; // Estableciendo un valor por medio del setter (radio) según su parámetro
  print(circulo.rCirculo);
  print(circulo.aCirculo);

  final camioneta = Camioneta('', '', '', 'Negro');
  print(camioneta);

  final heroe = Heroe('Clark Kent');
  final villano = Villano('Lex Luthor');
  print(heroe);
  print(villano);
}

// Ejemplo del uso extends

abstract class Personaje {
  String? poder;
  String nombre;

  Personaje(this.nombre);

  @override
  String toString() {
    return '$nombre - $poder';
  }

  void utilizarPoder() {
    print('$nombre ha utilizado $poder');
  }
}

class Heroe extends Personaje {
  int valentia = 100;
  Heroe(String nombre) : super(nombre);
}

class Villano extends Personaje {
  int maldad = 50;
  Villano(String nombre) : super(nombre);
}

class Animales {
  String especie; // Propiedad obligatoria

  Animales({required this.especie}); // Constructor minimizado

  // Constructor por nombre
  Animales.fromJson(Map<String, String> json)
      : especie = json[
                'especie'] ?? // Los ?? indican que si lo que se está asignando no tiene nada, se asigne lo que viene a continuación
            'Especie no indicada'; // Los : son equivalentes en solución a definir la propiedad como late

  @override
  String toString() {
    return 'Especie: $especie';
  }
}

class Circulo {
  double radio; // Propiedad 1
  double area; // Propiedad 2

  Circulo([this.radio = 0, this.area = 0]); // Parámetros opcionales

  // Getter
  String get rCirculo {
    return 'El radio del círculo es: $radio';
  }

  String get aCirculo {
    return 'El área del círculo es: ${area.toStringAsFixed(2)}'; // 98.52
  }

  // Setter
  set areaCirculo(double radio) {
    this.radio = radio;
    double area = math.pi * math.pow(radio, 2);
    this.area = area;
  }
}

// Ejemplo de implementación de una clase abstracta

abstract class Vehiculo {
  String? tipoRuedas;
  String? tipoChasis;
  String? modelo;
  String? color;

  void ruta(String inicio, String fin) {
    print('La ruta comienza en $inicio y termina en $fin');
  }
}

class Camioneta implements Vehiculo {
  @override
  String? tipoRuedas;
  @override
  String? tipoChasis;
  @override
  String? modelo;
  @override
  String? color;
  String? torque;

  Camioneta(
      [this.tipoRuedas, this.tipoChasis, this.modelo, this.color, this.torque]);

  @override
  void ruta(String inicio, String fin) {
    print(
        'La ruta de la camioneta modelo: $modelo comienza en $inicio y termina en $fin');
  }

  @override
  String toString() {
    return 'El color de la camioneta es: $color';
  }

  void pesoCargado(String peso) {
    print('El peso cargado en la camioneta es: $peso');
  }
}
