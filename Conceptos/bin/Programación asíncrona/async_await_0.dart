main(List<String> args) async {
  print('Obteniendo datos de usuario...');
  print(await realizarLlamada());
}

Future<String> obtenerDatosUsuario() => Future.delayed(
      Duration(seconds: 3),
      () => 'Datos de usuario, ID: 1023',
    );

Future<String> realizarLlamada() {
  return obtenerDatosUsuario();
}
