import 'direcciones_españa.dart';
import 'direcciones_eua.dart';
import 'persona_generico_clases.dart';

void main(List<String> args) {
  DireccionesEspana direccionesEspana =
      DireccionesEspana('36880', 232, 'La Cañiza', 'Pontevedra');
  DireccionEua direccionEua =
      DireccionEua('98001', 'WA', 1511, 'Jefferson St', 'Shelton');
  Persona luisGarcia = Persona('Luis', direccion: direccionesEspana);
  Persona jhonDoe = Persona('jhon', direccion: direccionEua);
  print(luisGarcia.direccion.runtimeType);
  print(jhonDoe.direccion.runtimeType);
}
