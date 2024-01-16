void main(List<String> args) {
  printHelloWorldModified(); // Invocando función
  print('Mi nacionalidad es: ${returnMyString()}');
  String result = functionWithParameters('Roberto');
  print(result);
  printHolaMundo(
      'Esto es una forma de función interesante, Ctrl + clic en el nombre de función para saber más');
  double resultArea = calcularArea(4.5, 3.4);
  print(resultArea.toStringAsFixed(2));
  print(calcularArea(4.5, 3.4).toStringAsFixed(2)); // Forma directa
  identificacion('Tony', 'Stark', ciudadOrigen: 'Alberta');
  int resultFactorial = factorial(5);
  print(resultFactorial);
  sintaxisReducida('Valdivia');
  print(
      'El área es: ${calcularAreaConFirmaDeFuncionSencilla(4.5, 3.4).toStringAsFixed(2)}');
}

// Función sin retorno
void printHelloWorldModified() {
  print('Hello Worlds of the Universe');
}

// Función con retorno
String returnMyString() {
  return 'Chileno';
}

// Funciones con parámetros
String functionWithParameters(String name) {
  return 'Hello $name';
}

double calcularArea(double ladoA, double ladoB) {
  double area = ladoA * ladoB;
  return area;
}

// Prueba 1
void printHolaMundo(String texto) => print(texto);

// Prueba 2
void identificacion(String nombre, String apellido,
    {int? edad, String? ciudadOrigen}) {
  print(
      'El nombre de la persona es $nombre, su apellido es $apellido tiene la siguiente edad: ${edad ?? '\'edad no informada\''} y es de ${ciudadOrigen ?? '\'ciudad no informada\''}');
}

// Función recursiva
int factorial(int num) {
  if (num == 1) {
    return 1;
  } else {
    return num * factorial(num - 1);
  }
}

// Sintaxis reducida para crear funciones
// Ejemplo 1
void sintaxisReducida(String parametro) =>
    print('¡Sintaxis reducida! - Argumento: ${parametro.toLowerCase()}');
// Ejemplo 2
double calcularAreaConFirmaDeFuncionSencilla(double ladoA, double ladoB) =>
    ladoA * ladoB;
