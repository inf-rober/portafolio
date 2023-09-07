import '../archivo_de_barril.dart';

class Usuario extends Persona with Profesion {
  String nombreUsuario;
  String contrasena;
  Usuario(String nombre, this.nombreUsuario, this.contrasena) : super(nombre);
}
