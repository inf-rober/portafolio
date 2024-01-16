import 'dart:math' as math;

void main(List<String> args) {
  List listaA = [];
  listaA.add(8);
  listaA.add(16);
  listaA.add(24);

  // For each tradicional
  // listaA.forEach((element) {
  //   print(element);
  // });
  // For each minimizado
  listaA.forEach(print);

  // Ejecución en cascada
  List listaB = [];
  listaB
    ..add(3)
    ..add(6)
    ..add(9);
  listaB.forEach(print);

  // Ejercicio curso
  List listaResultado = [];
  listaResultado = funcionEjercicio(listaB);
  // print(listaResultado);
  listaResultado.forEach(print);
}

List funcionEjercicio(List parametroLista) {
  List<int> listaResultado = [];
  for (int numero in parametroLista) {
    listaResultado.add(math.pow(numero, 2) as int);
  }
  return listaResultado;
}
