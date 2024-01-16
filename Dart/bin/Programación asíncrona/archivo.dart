import 'dart:convert';
import 'dart:io';

void main(List<String> args) async {
  // Lectura de un archivo
  final file = File(
      'C:\\Users\\Roberto\\Cursos\\Dart\\Conceptos\\bin\\Programación asíncrona\\file.txt');
  Stream<String> lines =
      file.openRead().transform(utf8.decoder).transform(LineSplitter());
  try {
    await for (var line in lines) {
      // print('$line \t ${line.length} caracteres');
    }
    // print('--- Se ha terminado de leer el archivo y se ha cerrado ---');
  } catch (e) {
    print(e);
  }
  // Escribir en un archivo
  var newFile = File(
          'C:\\Users\\Roberto\\Cursos\\Dart\\Conceptos\\bin\\Programación asíncrona\\new_file.txt')
      .create();
  print(newFile); // Instance of 'Future<File>'
  String newFilePath =
      'C:\\Users\\Roberto\\Cursos\\Dart\\Conceptos\\bin\\Programación asíncrona\\new_file.txt';
  // Escribir en un archivo (Forma 1)
  var newFileWrited = await File(newFilePath)
      .writeAsString('Esta línea la ha creado un desarrollador con la forma 1');
  print(
      newFileWrited); // File: 'C:\Users\Roberto\Cursos\Dart\Conceptos\bin\Programación asíncrona\new_file.txt'
  // Escribir en un archivo (Forma 2)
  newFileWrited.openWrite().write(
      'Esta segunda línea se ha creado con la forma 2 y reemplazará a la línea anterior');
  newFileWrited.openWrite().close();
  // Borrar archivo
  // newFileWrited.delete();
}
