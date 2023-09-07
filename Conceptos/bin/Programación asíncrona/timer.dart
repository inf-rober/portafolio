import 'dart:async' as async;

void main(List<String> args) {
  // Ejemplo 1
  async.Timer(Duration(seconds: 3), () {
    print('Me ejecuto después de 3 segundos');
  });
  print('Yo me ejecuto antes'); // "Hilo" de ejecución principal
  // Ejemplo 2
  int contador = 5;
  async.Timer.periodic(Duration(seconds: 2), (timer) {
    if (contador == 1) {
      timer.cancel();
    }
    contador--;
    print('Me ejecuto cada 2 segundos');
  });
  // Ejemplo 3
  async.Timer(Duration(seconds: 4), () {
    print('Doy la hora después de 4 segundos -> ${DateTime.now()}');
  });
}
