import '../archivo_de_barril.dart';

class Trabajador extends Persona implements Paseante {
  double salario;
  Trabajador(String nombre, this.salario) : super(nombre);

  @override
  void hablar(String texto) {
    super.hablar('$texto @override');
  }

  @override
  void caminar() {
    print('Caminando hacia el trabajo');
  }
}
