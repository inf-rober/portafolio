import '../Genéricos/direccion_generico_clases.dart';
import 'excepcion_persona.dart';

class DireccionesEspana extends Direccion {
  String? _codPostal;
  String? get codPostal => _codPostal;
  set codPostal(String? value) {
    if (value!.length == 5) {
      _codPostal = value;
    } else {
      throw ExcepcionPersona(value.length);
    }
  }

  DireccionesEspana(
      this._codPostal, int numeroVia, String nombreCalle, String ciudad)
      : super(numeroVia, nombreCalle, ciudad) {
    codPostal = codPostal;
  }
}
