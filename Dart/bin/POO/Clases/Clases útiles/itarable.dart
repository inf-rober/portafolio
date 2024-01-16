import 'dart:math' as math;
import '../archivo_de_barril.dart';

void main(List<String> args) {
  // ignore: unused_local_variable
  List<String> listaDeStrings = ['String1', 'String2', 'String3'];
  Iterable<String> iterableDeStrings = [
    'Roberto',
    'Or1ando',
    'Santibáñez',
    'Muñoz'
  ];
  String resultFirstWhere = iterableDeStrings.firstWhere(
      (nombreCompleto) => nombreCompleto.contains('l'),
      orElse: () => 'No hay elemento en la estructura que contenga la letra l');
  print(resultFirstWhere);
  String resultSingleWhere = iterableDeStrings.singleWhere((nombreCompleto) =>
      nombreCompleto.endsWith('to') && nombreCompleto.startsWith('Ro'));
  print(resultSingleWhere);
  Iterable<dynamic> iterableVariado = [
    0,
    1,
    'Uno',
    2,
    'Dos',
    3,
    'Tres',
    4,
    5,
    'Beldad',
    6,
    true,
    4.57,
    6.9,
    'Beldad'
  ];
  bool everyVar = iterableVariado.every((element) => element != 0); // false
  print(everyVar);
  bool anyVar = iterableVariado.any((element) => element == 'Beldad'); // true
  print(anyVar);
  Iterable<int> numeros = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
  Iterable<int> numerosPar = numeros.where((numero) => numero.isEven);
  Iterable<int> numerosImpar = numeros.where((numero) => numero.isOdd);
  print('Los números pares de $numeros son: $numerosPar');
  print('Los números impares de $numeros son: $numerosImpar');
  Iterable<int> primeraMitad = numeros.takeWhile((numero) => numero != 5);
  Iterable<int> segundaMitad = numeros.skipWhile((numero) => numero != 5);
  print(
      'La primera mitad del Iterable es: $primeraMitad y la segunda es: $segundaMitad');
  Iterable<num> numerosMap = numeros.map((numero) => math.pow(numero, 3));
  print(numerosMap);
  Iterable<int> numerosDePrueba = [
    9,
    -23,
    92,
    8,
    7,
    -34,
    -67,
    -8,
    77,
    3,
    41,
    -9
  ];
  if (numerosDePrueba.any((numero) => numero.isNegative)) {
    print('Este iterable contiene números negativos');
    for (var numero in numerosDePrueba) {
      if (numero.isNegative) {
        print(numero);
      }
    }
  }

  Iterable<Persona> personas = [
    Persona('Luis', edad: 28),
    Persona('Adán', edad: 930),
    Persona('Eva', edad: 931)
  ];

  Iterable<String> ejercicioMap = personas.map((persona) {
    String name = persona.getNombre;
    int edad = persona.edad ?? 0;
    return '$name tiene $edad años';
  });

  print(ejercicioMap);
}
