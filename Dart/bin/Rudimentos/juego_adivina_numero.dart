import 'dart:math';
import 'dart:io';

void main(List<String> args) {
  print('Introduce un número');
  String? valorMaximo = stdin.readLineSync();
  int valorMaximoInt;
  if (valorMaximo == null) {
    print('Error, inténtelo de nuevo.');
    exit(0);
  }
  if (int.tryParse(valorMaximo) != null) {
    valorMaximoInt = int.parse(valorMaximo);
    if (valorMaximoInt <= 0) {
      print('Introduce un número mayor que 0 la próxima vez.');
      exit(0);
    }
  } else {
    print('Introduce un número la próxima vez.');
    exit(0);
  }

  Random random = Random();
  int numeroAleatorio = random.nextInt(valorMaximoInt);
  int numeroIntentos = 0;

  while (true) {
    print('¿Cuál es el número elegido entre los $valorMaximo generados?');
    numeroIntentos++;
    String? numeroIntroducido = stdin.readLineSync();
    int numeroIntroducidoInt;
    if (numeroIntroducido == null) {
      print('Error, inténtelo de nuevo.');
      exit(0);
    }
    if (int.tryParse(numeroIntroducido) != null) {
      numeroIntroducidoInt = int.parse(numeroIntroducido);
    } else {
      print('Introduce un número la próxima vez.');
      continue;
    }
    if (numeroIntroducidoInt == numeroAleatorio) {
      print('¡Lo has acertado!');
      break;
    } else if (numeroIntroducidoInt < numeroAleatorio) {
      print('El número secreto es mayor. Vuelve a intentar.');
    } else {
      print('El número secreto es menor. Vuelve a intentar.');
    }
  }

  print('¡Enhorabuena!, has ganado en $numeroIntentos intentos.');
}
