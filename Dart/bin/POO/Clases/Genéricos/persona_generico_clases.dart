import '../Genéricos/direccion_generico_clases.dart' as generico;

// Comentario: Lo que hace genérico.Dirección en realidad es dar la posibilidad por medio de sus clases hijas filtrar a las instancias de Persona por medio de su código postal
// Dirección es una clase abstracta, es decir, no puede ser instanciada
class Persona<T extends generico.Direccion> {
  String? _nombre;
  int? edad;
  String? telefono;
  T? direccion;

  Persona(this._nombre, {this.edad, this.direccion, this.telefono});

  get getNombre => _nombre;
  set setNombre(valor) => _nombre = valor;

  void hablar(String texto) {
    print('$_nombre habla y dice: $texto');
  }

  T? get getDireccion => direccion;
}
