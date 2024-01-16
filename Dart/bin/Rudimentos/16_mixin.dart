abstract class Animal {}

abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

mixin class Volador {
  void volar() => print('Estoy volando');
}

mixin class Nadador {
  void nadar() => print('Estoy nadando');
}

mixin class Caminante {
  void caminar() => print('Estoy caminando');
}

class Delfin extends Mamifero with Nadador {}

class Murcielago extends Mamifero with Volador, Caminante {}

class Gato extends Mamifero with Caminante {}

class Paloma extends Ave with Volador {}

class Pato extends Ave with Volador, Caminante, Nadador {}

class Tiburon extends Pez with Nadador {}

class PezVolador extends Pez with Nadador, Volador {}

void main(List<String> args) {
  final delfin = Delfin();
  delfin.nadar();
  final gato = Gato();
  gato.caminar();
}
