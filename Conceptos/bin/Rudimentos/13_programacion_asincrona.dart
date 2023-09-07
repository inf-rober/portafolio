void main(List<String> args) async {
  print('Inicio de programa');
  final data = await httpGet('https://www.api.com/martians');
  print(data);
  // httpGet('https://www.api.com/martians').then(
  //   (value) {
  //     print(value.toUpperCase());
  //   },
  // );
  // print(getNombre('8'));
  final nombre = await getNombre('8');
  print(nombre);
  print('Fin de programa');
}

Future<String> getNombre(String id) async => '$id - Roberto';

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Hola Mundo - 3 Segundos';
  });
}
