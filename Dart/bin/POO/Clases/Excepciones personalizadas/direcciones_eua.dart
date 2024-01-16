import '../Genéricos/direccion_generico_clases.dart';

class DireccionEua extends Direccion {
  String? codPostal;
  String? estado;
  DireccionEua(this.codPostal, this.estado, int numeroVia, String nombreCalle,
      String ciudad)
      : super(numeroVia, nombreCalle, ciudad);
}
