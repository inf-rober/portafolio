void main(List<String> args) {
  int iteraciones = 10; // Variable de control
  // For de incremento
  for (int i = 0; i <= iteraciones; i++) {
    print(i);
  }
  // For de decremento tipo 1
  for (int i = 0; i <= iteraciones; i++) {
    print(iteraciones - i);
  }
  // For de decremento tipo 2
  for (int i = 10; i >= 0; i--) {
    print(i);
  }
  // Recorrer listas
  List lista = ['Roberto', 'Orlando', 'Santibáñez', 'Muñoz'];
  for (var nombre in lista) {
    print('Elemento: $nombre');
  }
}