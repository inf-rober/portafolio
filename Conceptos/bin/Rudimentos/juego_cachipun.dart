import 'dart:math';
import 'dart:io';

void main(List<String> args) {
  // Contadores de victoria
  // ignore: unused_local_variable
  int userWins = 0;
  // ignore: unused_local_variable
  int computerWins = 0;
  // Opciones cachipún
  List opciones = [
    'piedra',
    'papel',
    'tijera',
  ];

  while (true) {
    print('Elige piedra, papel, tijera o introduce Q/q para salir.');
    String? eleccionUsuario = stdin.readLineSync()!.toLowerCase();

    if (eleccionUsuario == 'Q' || eleccionUsuario == 'q') {
      break;
    }
    if (!opciones.contains(eleccionUsuario)) {
      print('¡Error!, debes elegir piedra, papel o tijera.');
      continue; // Rompe el flujo del ciclo en este punto y comienza de nuevo el while
    }

    Random random = Random();
    int randomNum = random.nextInt(2);
    String eleccionOrdenador = opciones[randomNum];
    print('El ordenador ha seleccionado: $eleccionOrdenador');

    if (eleccionUsuario == 'piedra' && eleccionOrdenador == 'tijera') {
      print('¡Has ganado!');
      userWins++;
    } else if (eleccionUsuario == 'papel' && eleccionOrdenador == 'piedra') {
      print('¡Has ganado!');
      userWins++;
    } else if (eleccionUsuario == 'tijera' && eleccionOrdenador == 'papel') {
      print('¡Has ganado!');
      userWins++;
    } else if (eleccionUsuario == eleccionOrdenador) {
      print('¡Empate!');
    } else {
      print('¡Has perdido!');
      computerWins++;
    }
  }

  print('Tus puntos: $userWins');
  print('Puntos ordernador: $computerWins');

  if (computerWins > userWins) {
    print('Ha ganado la máquina');
  } else if (computerWins == userWins) {
    print('¡Empate!');
  } else {
    print('¡Has ganado, enhorabuena!');
  }
}
