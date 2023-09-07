import 'dart:math';

void main(List<String> args) {
  // Constantes
  const constPi = pi;
  const raizDos = sqrt2;
  print('Valor PI: $constPi - Valor raiz de dos: $raizDos');
  // Senos y Cosenos
  assert(cos(constPi) == -1);
  // var grados = 90;
  var radianes = 90 * (constPi / 180);
  print(radianes);
  print(sin(90));
  // Raíz cuadrada
  int n1 = 64;
  print(sqrt(n1));
  // Random
  print(Random().nextInt(10));
  print(Random().nextDouble());
  print(Random().nextBool());
  Random random = Random();
  print(
      'Un número aleatorio -> ${random.nextInt(100)} con su bool -> ${random.nextBool()}');
  // Puntos
  Point punto0 = Point(12, 123);
  Point punto1 = Point(34, 234);
  double distancia = punto0.distanceTo(punto1);
  print(distancia);
  // Rectángulo
  Rectangle rectangle = Rectangle(25, 23, 49, 69);
  print('El ancho del rectángulo es: ${rectangle.width}');
  // Max y Min
  print(max(59, 69)); // 69
  print(min(108, 123)); // 108
}
