// void main(List<String> arguments) {
//   var nombre = 'Roberto';
//   var nacionalidad = 'Chileno';
//   print('¡Hola Patriotas!');
//   print('Mi nombre es ' + nombre); // Concatenación
//   print('Mi nombre es $nombre'); // Interpolación
//   print(nacionalidad);
//   print(nombre.runtimeType); // Mostrar por consola el tipo de dato
// }

void main(List<String> arguments) {
  String stringExample = 'lorem ipsum dolor capitur';
  print(stringExample.contains('lorem')); // true
  print(stringExample.indexOf('ipsum')); // 6
  print(stringExample.startsWith('ipsum')); // false
  print(stringExample.endsWith('capitur')); // true
  print(stringExample.substring(12, 17)); 
  // Conversión de tipos
  int valueExample = 8;
  String valueExampleLikeString = valueExample.toString();
  print(valueExampleLikeString.runtimeType); // String
  // Strings multilínea
  String commentExample = ''' 
    This 
      is
        a 
          multiline
            comment
              in
                Dart
  ''';
  print(commentExample);
  // Cortar Strings usando el método Split
  String email = 'example@example.edu';
  print(email.split('@'));
  print(email.split('@').first);
  print(email.split('@').last);
  // Concatenación
  String firstPart = 'Fairy';
  String secondPart = 'Tail';
  // print(firstPart + ' ' + secondPart); // Concatenación primera forma
  // print('$firstPart ' + '$secondPart'); // Concatenación segunda forma
  print('$firstPart $secondPart'); // Interpolación de cadenas, forma recomendada
}