void main(List<String> args) {
  // Ejercicio 1
  // Solución: indicar mediante el símbolo de ? que la variable a podrá ser nullable;
  int? x;
  x = null;
  print('El valor de a es: $x');
  // Ejercicio 2
  // Solución 1: indicar mediante el símbolo de ? al genérico para que la lista pueda almacenar un valor nulo
  // Comentario: la posición de ? indica que puede ser nullable el contenido o nullable el objeto en sí.
  List<String> aListOfStrings = ['one', 'two', 'three'];
  List<String>? aNullableListOfStrings;
  List<String?> aListOfNullableStrings = ['one', null, 'three'];
  print('aListOfStrings is $aListOfStrings');
  print('aNullableListOfStrings is $aNullableListOfStrings');
  print('aListOfNullableStrings is $aListOfNullableStrings');
  // Ejercicio 3
  // Solución: assertion operator
  int? couldReturnNullButDoesnt() => -3;
  int? couldBeNullButIsnt = 1;
  List<int?> listThatCouldHoldNulls = [2, null, 4];
  int a = couldBeNullButIsnt;
  int b = listThatCouldHoldNulls.first!; // assertion operator
  int c = couldReturnNullButDoesnt()!.abs(); // assertion operator
  print('a is $a'); // 1
  print('b is $b'); // 2
  print('c is $c'); // 3
  // Ejercicio 4
  String text;
  if (DateTime.now().hour < 12) {
    text = "It's morning! Let's make aloo paratha!";
  } else {
    text = "It's afternoon! Let's make biryanil!";
  }
  print(text);
  print(text.length);
  // Ejercicio 5
  // Solución: condicionar el argumento str respondiendo a si es null o no con una estructura if
  int getLengthCero(String? str) {
    if (str != null) {
      return str.length;
    } else {
      return 0;
    }
  }

  print(getLengthCero('This is a string!')); // 17
  // Ejercicio 6
  int getLengthUno(String? str) {
    if (str == null) {
      throw FormatException('No hay ningún String que evaluar');
    } else {
      return str.length;
    }
  }

  print(getLengthUno('This is a string with a new format!'));
}
