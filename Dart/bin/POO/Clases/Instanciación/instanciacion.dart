import '../archivo_de_barril.dart'; // Archivo de barril
import '../settergetter.dart';

void main(List<String> args) {
  // Instanciación de una clase por medio de un constructor tradicional
  GalletaJengibre jengi = GalletaJengibre('Jengi');
  print(jengi.toString());
  print(jengi.edad); // 0
  jengi.nacimiento();
  jengi.dormir();
  print(
      'El nombre de la galleta es: ${jengi.nombre} y tiene ${jengi.edad} años');

  // Instanciación de una clase por medio de un constructor por nombre
  GalletaJengibre galletaParaTestear =
      GalletaJengibre.paraDefinirTamano(nombre: 'Jengibrito', tamano: 'Grande');
  print('Nombre: ${galletaParaTestear.nombre}');
  print('Edad: ${galletaParaTestear.edad}');
  print('Tamaño: ${galletaParaTestear.tamano}');

  // Getters y Setters
  SetterGetter setterGetter = SetterGetter('Texto', 8, true, 8.8);
  setterGetter.setPropiedad1 = 'nuevoTexto';
  print(setterGetter.getPropiedad1);
  setterGetter.ifYouHaveSomethingDefineThis();
  print(setterGetter.getPropiedad4); // 91.99

  // Concepto de asociación
  Direccion direccionRoberto = Direccion(324, 'Chuasmeki', null, 'Stainach');
  Persona roberto = Persona('Roberto',
      edad: 1789, direccion: direccionRoberto, telefono: '+56 9 34005656');
  print(roberto.getNombre);
  print(roberto.direccion!.nombreCalle);
  direccionRoberto.nombreCalle = 'Ausckei';
  print(roberto.direccion!.nombreCalle);

  // Concepto de herencia
  Direccion direccionAnnaAlbrecht =
      Direccion(19, '13 Fernkornstraße', 123982, 'Érfut');
  Trabajador trabajadorAnnaAlbrecht = Trabajador('Anna Albrecht', 102334.29);
  trabajadorAnnaAlbrecht.edad = 28;
  trabajadorAnnaAlbrecht.direccion = direccionAnnaAlbrecht;
  print('La dirección de Anna es: ${direccionAnnaAlbrecht.nombreCalle}');
  print(trabajadorAnnaAlbrecht.runtimeType); // Trabajador

  // Sobrecarga de métodos
  roberto.hablar(
      'Cáete siete veces y levántate ocho.'); // roberto es una instancia de tipo Persona
  trabajadorAnnaAlbrecht.hablar(
      'Un objetivo sin un plan es solo un deseo.'); // trabajadorAnnaAlbrecht es una instancia de tipo Trabajador
  var trabajadorCondorito = Trabajador('Condorito suertudo', 5500000);
  trabajadorCondorito.hablar('No cuentes los días, haz que los días cuenten.');

  // Interface
  // Comentario: Las interfaces son una clase abstracta que agrega funcionalidades generales que se pueden modificar ad-hoc a la clase que la implementa.
  trabajadorCondorito.caminar();

  // Mixing
  Usuario lalolanda = Usuario('Lalolanda', 'lalo', 'landa28');
  lalolanda.profesion = 'Programador';
  List<String> competencias = ['Dart', 'Flutter', 'Python'];
  print(lalolanda.profesion);
  var competenciasLalolanda = lalolanda.competenciasListar(competencias);
  print(competenciasLalolanda);

  // Concepto de extensión
  double salarioConvertido =
      trabajadorCondorito.convertirADolaresDePesoChileno(5500000);
  print(
      '5500000 Pesos Chilenos  => ${salarioConvertido.toStringAsFixed(2)} Dólares');
  double salarioConvertidoAnnaAlbrecht =
      trabajadorAnnaAlbrecht.convertirADolaresDeEuro(102334.29);
  print(
      '102334.29 Euros => ${salarioConvertidoAnnaAlbrecht.toStringAsFixed(2)} Dólares');

  // Concepto de static
  // Comentario: static quiere decir que no se necesita instanciar X clase para acceder al método codificado como estático
  int resultStaticMethod = TrabajadorExtension.obtenerValorCambioDolarAClp();
  print(resultStaticMethod);
}
