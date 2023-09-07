void main(List<String> args) {
  // Error 1
  // int numero = 'Esto no va aquí';
  // int numero;
  // assert(numero != null);
  // if (numero == null) {
  //   exit(0);
  // }
  //calcularCuadrado(numero);

  // Variable nullable y no-nullable
  int? varNullable;
  int varNoNullable = 0;
  print('$varNullable $varNoNullable');

  // Argumento nullable
  var result = returnSocket();
  print(result);

  // Assertion operator
  String apellido = obtenerApellido('Roberto Santibáñez')!;
  print(apellido);
}

int calcularCuadrado(int numero) {
  return numero * numero;
}

dynamic returnSocket([int? port]) {
  if (port == null) {
    return null;
  } else {
    return port;
  }
}

String? obtenerApellido(String nombreCompleto) {
  var partes = nombreCompleto.split(' ');
  return partes.length > 1 ? partes[1] : null;
}
