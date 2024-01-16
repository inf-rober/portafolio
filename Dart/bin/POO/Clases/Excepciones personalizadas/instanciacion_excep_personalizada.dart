import 'direcciones_españa.dart';
import 'direcciones_eua.dart';
import 'excepcion_persona.dart';
import 'persona_excep_personalizada.dart';

void main(List<String> args) {
  DireccionesEspana direccionesEspana =
      DireccionesEspana('36880', 232, 'La Cañiza', 'Pontevedra');
  DireccionEua direccionEua =
      DireccionEua('98001', 'WA', 1511, 'Jefferson St', 'Shelton');
  Persona luisGarcia = Persona('Luis', direccion: direccionesEspana);
  Persona jhonDoe = Persona('jhon', direccion: direccionEua);
  print(luisGarcia.direccion.runtimeType);
  print(jhonDoe.direccion.runtimeType);

  // Excepción personalizadas
  try {
    // ignore: unused_local_variable
    DireccionesEspana direccionesEspanaConError =
        DireccionesEspana('0124', 1, 'San Burdeos de las Martas', 'Somewhere');
  } on ExcepcionPersona catch (e) {
    print(
        '${e.message}, el código recibido tiene ${e.source}, faltan: ${e.offset}.');
  }
}
