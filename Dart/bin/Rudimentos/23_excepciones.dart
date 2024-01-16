void main(List<String> args) {
  // Try-catch simple
  /*
  String? nombre; // Variable nullable
  try {
    String nombreEnMayusculas = nombre!.toUpperCase();
  } catch (e) {
    print(e);
  }
  */

  // Try-catch específico
  /*
  int a = 20;
  int b = 0;
  int result;
  try {
    result = a ~/ b; // ~/ División entera
  } on UnsupportedError {
    print('No se puede dividir por zero');
  }
  */

  // Try-catch con finally
  /*
  String num = '1O'; // Es O no 0, error a propósito
  try {
    int newNum = num as int; // Forma incorrecta de parsear
    print(newNum); // No se ejecuta
  } catch (e) {
    print(e); // type 'String' is not a subtype of type 'int' in type cast
  } finally {
    num = '10';
    int newNum = int.parse(num);
    print(newNum);
  }
  */

  // Concepto de throw
  double div(int a, int b) {
    if (b <= 0) {
      throw FormatException(
          'No se deben utilizar denominadores iguales o menores a 0');
    }
    double res = a / b;
    return res;
  }

  try {
    div(17, 0);
  } on FormatException {
    print('Mi excepción creada la atrapa este on');
  }

  print('Continuación'); // Sin try-catch esta sentencia no se ejecutaría
}
