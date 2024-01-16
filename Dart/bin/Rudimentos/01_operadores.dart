void main(List<String> arguments) {
  
  '''
    Operadores aritméticos
    +, -, /, *, --, ++, ~/, %
  ''';

  int n1 = 70;
  int n2 = 69;
  int n3 = 59;
  print(n1 + n2); // 139
  print(n3 - 44); // 15
  print(n2 / 29); // 2.3793103448275863
  print(n3 * n1); // 4130
  // Incremento y decremento
  n1++; // 71
  print(n1);
  --n1; // 70
  print(n1);
  // Cambiar signo
  print(-n2);
  // División entera
  print(n1 ~/ 26); // 2
  // División normal
  print(n1 / 26); // 2.6923076923076925
  // Resto de una división
  print(n1 % 26); // 18
  
  '''
    Operadores relacionales
    >, <, >=, <=
  ''';

  print('n1 es mayor a n2: ${n1 > n2}'); // true
  print('n1 es menor a n2: ${n1 < n2}'); // false
  print('n3 es menor o igual a n1: ${n3 <= n1}'); // true
  print('n2 es mayor o igual a n3: ${n2 >= n3}'); // true

  '''
    Operadores de igualdad
    ==, !=
  ''';

  print('n1 es igual a n2: ${n1 == n2}');
  print('n1 es diferente a n2: ${n1 != n2}');

  '''
    Operadores de asignación
    ??=, +=, -=, *=, /=
  ''';

  // var x;
  // x ??= 1;
  // print(x); // 1

  double a = 78;
  a += 1;
  print(a); // 79
  a -= 19;
  print(a); // 60
  a *= 2; 
  print(a); // 120
  a /= 3;
  print(a); // 40

  '''
    Operadores lógicos
    !, ||, &&
  ''';

  int b = 17;
  int c = 16;
  bool d = b == c; 
  print(d); // false
  print(!d); // true
  bool e = b < c || b >= 17;
  print(e); // true por b >= 17
  bool f = b != c && c >= b;
  print(f); // false por c >= b

  '''
    Operadores ternarios
    condición ? expresion1 : expresion2;
    evaluacion ?? expresion1;
  ''';

  // bool boolTest = true;
  // boolTest ? print('Expresión si la condición es verdadera') : print('Expresión si la condición es falsa');
  int g = 19;
  g >= 15 ? print('g es mayor o igual a 15') : print('g NO es mayor o igual a 15');
  // var empty; // Null
  // print(empty ?? 'Empty está vacía');
  var myList = ['Gorro', null, 119827, 231.91, true, ['Enero', 'Febrero', 'Marzo']];
  print(myList[1] ?? 'There is a null value');
  
}