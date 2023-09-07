import '../archivo_de_barril.dart';

final int valorCambioDolarAClp = 870;

extension TrabajadorExtension on Trabajador {
  double convertirADolaresDeEuro(double salario) {
    return salario * 1.0877235;
  }

  double convertirADolaresDePesoChileno(double salario) {
    return salario * 0.0011561324;
  }

  static int obtenerValorCambioDolarAClp() {
    return valorCambioDolarAClp;
  }
}
