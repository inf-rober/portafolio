import 'dart:io';

void main(List<String> args) {
  print('¿Quieres jugar un juego?');
  var respuesta = stdin.readLineSync();
  if (respuesta != 'Si') {
    exit(0);
  } else {
    print('¡Comencemos!');
  }
  var puntuacion = 0;

  // Pregunta 1
  print('¿Qué significan las siglas GPU?');
  var respuestaQuizz1 = stdin.readLineSync();
  if (respuestaQuizz1!.toLowerCase() == 'graphics processing unit') {
    print('¡Correcto!');
    puntuacion++;
  } else {
    print('¡Incorrecto!');
  }

  //Pregunta 2
  print('¿Qué significan las siglas USB?');
  var respuestaQuizz2 = stdin.readLineSync();
  if (respuestaQuizz2!.toLowerCase() == 'universal serial bus') {
    print('¡Correcto!');
    puntuacion++;
  } else {
    print('¡Incorrecto!');
  }

  //Pregunta 3
  print('¿Qué significan las siglas TCP?');
  var respuestaQuizz3 = stdin.readLineSync();
  if (respuestaQuizz3!.toLowerCase() == 'transmission control protocol') {
    print('¡Correcto!');
    puntuacion++;
  } else {
    print('¡Incorrecto!');
  }

  print('Has obtenido $puntuacion respuestas correctas');
  double porcentaje = (puntuacion.toDouble() / 2) * 100;
  print('Has contestado el $porcentaje % del quizz correctamente');
}
