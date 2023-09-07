void main(List<String> args) {
  List lista = [6, 31, 22, 87, 41, 93, 102, 5, 1293, 23, 7];
  // Identificar valor máximo con un for in
  int maximo = 0;
  for (int numero in lista) {
    if (maximo < numero) {
      maximo = numero;
    }
  }
  print(maximo);
  // Identificar valor mínimo con un for in
  // ignore: prefer_typing_uninitialized_variables
  var minimo;
  for (int numero in lista) {
    if (minimo == null || minimo > numero) {
      minimo = numero;
    }
  }
  print(minimo);
}
