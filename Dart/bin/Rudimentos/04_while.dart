import 'dart:io';

void main(List<String> args) {
  int n = 10;
  // while (n >= 0) {
  //   print('El valor de n es: $n');
  //   n--;
  // }
  while (n < 9) {
    String? line = stdin.readLineSync();
    if (line.toString().startsWith('#')) {
      continue;
    } else if (line == 'End') {
      break;
    }
  }
  print('Línea que continúa después del bucle while infinito');

  // Do - while
  // Comentario: Bucle que siempre se ejecuta 1 vez
  String condicion = 'PL/SQL';
  do {
    print('Siempre me imprimo una vez');
  } while (condicion == 'SQL'); // False
}
