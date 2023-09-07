abstract class Direccion {
  int _numeroVia;
  String _nombreCalle;
  String _ciudad;

  get numeroVia => _numeroVia;

  set numeroVia(value) => _numeroVia = value;

  get nombreCalle => _nombreCalle;

  set nombreCalle(value) => _nombreCalle = value;

  get ciudad => _ciudad;

  set ciudad(value) => _ciudad = value;

  Direccion(this._numeroVia, this._nombreCalle, this._ciudad);
}
