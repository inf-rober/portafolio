import 'dart:isolate' as isolate;

// Isla 1
main(List<String> args) async {
  contarSegundos(3);
  await imprimirDatosUsuario();
}

// Isla 1
Future<void> imprimirDatosUsuario() async {
  print(
      'Esperando datos de usuario..., ${DateTime.now().millisecond} milisegundos');
  try {
    final port =
        isolate.ReceivePort(); // Aquí abrimos el puerto para recibir mensajes
    await isolate.Isolate.spawn(obtenerDatosUsuario, port.sendPort);
    print(await port.first);
  } catch (e) {
    print(e);
  }
}

// Isla 2
Future<void> obtenerDatosUsuario(isolate.SendPort port) => Future.delayed(
      Duration(seconds: 3),
      () {
        print('Este mensaje ha nacido de Isla 2');
        isolate.Isolate.exit(port,
            'Este mensaje ha sido enviado de Isla 2 a Isla 1 y esta última lo ha mostrado en consola');
      },
    );

// Isla 1
void contarSegundos(int segundos) {
  for (var i = 1; i <= segundos; i++) {
    Future.delayed(
      Duration(seconds: i),
      () {
        print('$i -> ${DateTime.now().millisecond} milisegundos');
      },
    );
  }
}
