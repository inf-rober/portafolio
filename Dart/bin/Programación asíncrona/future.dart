/*
  Una instancia de Future tiene dos estados: Incompleta y Completa
*/
void main(List<String> args) {
  // obtenerDatosUsuario();
  print('Obteniendo datos de usuario...');
  ejemploExcepcion();
}

Future<void> obtenerDatosUsuario() => Future.delayed(Duration(seconds: 3), () {
      print('Datos de usuario obtenidos');
    });

// Función futuro que lanza un error
Future<void> ejemploExcepcion() => Future.delayed(Duration(seconds: 2),
    (() => throw Exception('Ejemplo de error en una función Future')));
