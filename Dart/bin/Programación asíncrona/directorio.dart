import 'dart:io';

void main(List<String> args) async {
  var dir = Directory(
      'C:\\Users\\Roberto\\Cursos\\Dart\\Conceptos\\bin\\Programación asíncrona');

  // Comprobar existencia de directorio por medio de el método exists()
  var existenciaDir = await dir.exists();
  print(existenciaDir ? 'El directorio existe' : 'El directorio no existe');
  // Listar elementos del directorio Temp
  var tempDir = Directory.systemTemp;
  await for (var dirAndFiles in tempDir.list(followLinks: false)) {
    // print(dirAndFiles);
  }
  // Listar elementos de cualquier directorio
  var dirParaListar = Directory('/Users');
  print(dirParaListar.runtimeType); // _Directory
  List<FileSystemEntity> listaDirAndFiles = await dirParaListar.list().toList();
  print(listaDirAndFiles);
  // Crear directorio en una línea
  var directorioACrear = Directory(
          'C:\\Users\\Roberto\\Cursos\\Dart\\Conceptos\\bin\\Programación asíncrona\\directorio_creado_por_código')
      .create();
  // Eliminar directorio
  Directory(
          'C:\\Users\\Roberto\\Cursos\\Dart\\Conceptos\\bin\\Programación asíncrona\\directorio_creado_por_código')
      .delete();
}
