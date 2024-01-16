void main(List<String> arguments) {
  String valueForTestingOne = 'Azul';
  int valueForTestingTwo = 9;
  '''
    Para que se ejecute el código interno de la estructura condicional se 
    deben dar como verdaderas ambas condiciones.
  ''';
  if (valueForTestingOne == 'Azul' && valueForTestingTwo >= 9) { 
    print('Es de día');
  }

  // Estructuras condicionales con Else
  // Ejemplo 1
  int edad1 = 30;
  int edad2 = 25;
  if (edad1 - edad2 == 0) {
    print('Las edades son iguales');
  } else {
    int diferencia = edad1 - edad2;
    print('La diferencia entre las edades 1 y 2 es: $diferencia');
  }
  // Ejemplo 2
  int pages = 200;
  if (pages <= 200) {
    print('El libro es de bolsillo');
  } else {
    print('El libro es extenso');
  }
  // Ejemplo 3
  if (edad1 % 2 == 0 || edad2 % 2 == 0) {
    print('La primera o la segunda edad son pares');
  } else {
    print('La primera y la segunda edad son impares');
  }

  // Estructuras condicionales con Else if 
  String materia1 = 'Algebra';
  String materia2 = 'Trigonometría';
  String materia3 = 'Probabilidad y estadística';
  String alumno1 = 'Jhon Doe';
  String alumno2 = 'Perico el de los Palotes';
  if (!(alumno1 == 'Jhon Doe')) { // Cuando se quiere negar una condición que utiliza un operador lógico se debe "envolver" entre paréntesis así -> !(condición)
    print('Clase: $materia2 y $materia3');
  } else if (alumno2 == 'Perico el de los Palotes') {
    print('Clase: $materia1 y $materia3');
  } else {
    print('No hay alumnos');
  }

  // Estructura condicional switch
  double nota = 6.8;
  switch (nota) {
    case 7.0:
      print('Aprobado con distinción máxima');
      break;
    case 5.5:
      print('Aprobado con distinción');
      break;
    case 4.0:
      print('Aprobado');
      break;
    default:
      print('Nota inválida');
      break;
  }
}