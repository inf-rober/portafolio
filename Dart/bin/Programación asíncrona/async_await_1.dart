// Comentario: await no quiere decir que se ejecute primero, tiene que ver con que se continúe después de completar la función Future
main(List<String> args) async {
  contarSegundos(3); // Impresión 2
  await imprimirDatosUsuario();
}

Future<String> obtenerDatosUsuario() => Future.delayed(
      Duration(seconds: 3),
      () => 'Datos de usuario, ID: 1023',
    );

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

Future<void> imprimirDatosUsuario() async {
  print(
      'Esperando datos de usuario..., ${DateTime.now().millisecond} milisegundos'); // Impresión 1
  print(await obtenerDatosUsuario()); // Impresión 3
}
