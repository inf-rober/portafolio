import 'dart:io';
import 'package:english_words/english_words.dart' as englishlib;
import 'package:csv/csv.dart' as csv;

void main() async {
  // Librería de Inglés
  // englishlib.nouns.take(50).forEach(print);
  englishlib.WordPair randomWordPair = englishlib.WordPair.random();
  print(randomWordPair);
  Iterable<englishlib.WordPair> wordPairGenerated =
      englishlib.generateWordPairs();
  print(wordPairGenerated);
  // Librería de CSV
  List<List<dynamic>> listaEjemplo = [];
  for (var i = 0; i < 10; i++) {
    listaEjemplo.add([]);
    for (var z = 0; z < 10; z++) {
      if (i == 0) {
        listaEjemplo[i].add('Columna $z');
      } else {
        listaEjemplo[i].add(z);
      }
    }
  }
  String csvElement = const csv.ListToCsvConverter()
      .convert(listaEjemplo); // Transforma la lista de listas en un csv String
  Directory directory = Directory(
      'C:\\Users\\Roberto\\Cursos\\Dart\\Conceptos\\bin\\Rudimentos\\lib');
  final String path = '${directory.path}\\ejemplo_csv.csv';
  File file = File(path); // Crea el archivo con la ruta completa
  file.writeAsString(csvElement);
  print(file);
}
