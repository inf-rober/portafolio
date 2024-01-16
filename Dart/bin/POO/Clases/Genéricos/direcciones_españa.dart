import '../Genéricos/direccion_generico_clases.dart';

class DireccionesEspana extends Direccion {
  String? codPostal;
  DireccionesEspana(
      this.codPostal, int numeroVia, String nombreCalle, String ciudad)
      : super(numeroVia, nombreCalle, ciudad);
}
