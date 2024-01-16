import 'dart:io';

void main(List<String> args){
  print('¡Bienvenido jugador!');
  print('¿Cuál es tu nombre?');
  String nombreJugador = stdin.readLineSync()!; 
  print(nombreJugador);
 
}