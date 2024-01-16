void main(List<String> args) {
  Cafe cafe = Cafe();
  print('Orden recibida');
  cafe.frio();
  print(cafe.servir());
}

class Cafe {
  late String _temperatura; // Inicialización tardía
  void caliente() {
    _temperatura = 'caliente';
  }

  void frio() {
    _temperatura = 'frío';
  }

  String servir() => 'Aqui tiene su café $_temperatura';
}
