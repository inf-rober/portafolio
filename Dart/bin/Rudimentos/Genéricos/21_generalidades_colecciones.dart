import '22_alimento.dart';

void main(List<String> args) {
  List uno = [
    1,
    8.7,
    true,
    'Char',
    [0.0, 0.1, 0.2],
    {'nombre': 'Roberto', 'ciudad': 'Valdivia'}, // Map
    {'Set1', 'Set2', 'Set3'} // Set
  ];
  print(uno);

  List<String> dos = ['Santiago', 'Osorno', 'Puerto Montt', 'Punta Arenas'];
  print(dos);

  List<int> tres = [];
  tres.add(999);
  // tres.add('Error a propósito'); // No se admiten otros tipos de datos que no sean int como lo define el genérico de la lista
  print(tres);

  Set<String> cuatro = {};
  // Ejecución en cascada
  cuatro
    ..add('Error 502')
    ..add('Error 404')
    ..add('Error 422');

  for (String element in cuatro) {
    print(element);
  }

  Map<String, dynamic> cinco = {
    'Uno': 1,
    'Dos': true,
    'Tres': 9.8,
    'Cuatro': cuatro
  };

  print(cinco);

  // Instanciación de clase Alimento
  Alimento tomates = Alimento('Tomates', 2500);
  Alimento paltas = Alimento('Paltas', 8500);

  List<Alimento> listaCompras = [];
  listaCompras
    ..add(tomates)
    ..add(paltas);
  print(listaCompras);
}
