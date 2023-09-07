import '../archivo_de_barril.dart';

class Persona {
  String? _nombre;
  int? edad;
  String? telefono;
  Direccion? direccion;

  Persona(this._nombre, {this.edad, this.direccion, this.telefono});

  get getNombre => _nombre;
  set setNombre(valor) => _nombre = valor;

  void hablar(String texto) {
    print('$_nombre habla y dice: $texto');
  }
}
