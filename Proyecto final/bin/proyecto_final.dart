import 'dart:io' as io;
import 'sujeto.dart';
import 'package:csv/csv.dart' as csvlib;

const List<List> numerosOrdenDirecto = [
  [
    [2, 9],
    [5, 4]
  ],
  [
    [3, 9, 6],
    [6, 5, 2]
  ],
  [
    [5, 4, 1, 7],
    [9, 1, 6, 8]
  ],
  [
    [8, 2, 1, 9, 6],
    [7, 2, 3, 4, 9]
  ],
  [
    [5, 7, 3, 6, 4, 8],
    [3, 8, 4, 1, 7, 5]
  ],
  [
    [2, 1, 8, 9, 4, 3, 7],
    [7, 8, 5, 2, 1, 6, 3]
  ],
  [
    [1, 8, 4, 2, 7, 5, 3, 6],
    [2, 7, 9, 6, 3, 1, 4, 8]
  ],
  [
    [7, 2, 6, 1, 9, 4, 8, 3, 5],
    [4, 3, 8, 9, 1, 7, 5, 6, 2]
  ],
  [
    [6, 2, 5, 3, 1, 9, 8, 5, 4, 7],
    [9, 4, 3, 8, 7, 5, 2, 9, 6, 1]
  ]
];
const List<List> numerosOrdenInverso = [
  [
    [9, 4],
    [5, 6]
  ],
  [
    [2, 1],
    [1, 3]
  ],
  [
    [3, 9],
    [8, 5]
  ],
  [
    [2, 3, 6],
    [5, 4, 1]
  ],
  [
    [4, 5, 8],
    [2, 7, 5]
  ],
  [
    [7, 4, 5, 2],
    [9, 3, 8, 6]
  ],
  [
    [2, 1, 7, 9, 4],
    [5, 6, 3, 8, 7]
  ],
  [
    [1, 6, 4, 7, 5, 8],
    [6, 3, 7, 2, 9, 1]
  ],
  [
    [8, 1, 5, 2, 4, 3, 6],
    [4, 3, 7, 9, 2, 8, 1]
  ],
  [
    [3, 1, 7, 9, 4, 6, 8, 2],
    [9, 8, 1, 6, 3, 2, 4, 7]
  ]
];
const List<List> numerosOrdenCreciente = [
  [
    [3, 1],
    [8, 6]
  ],
  [
    [5, 2, 4],
    [4, 3, 3]
  ],
  [
    [4, 1],
    [3, 2]
  ],
  [
    [5, 2, 7],
    [1, 8, 6]
  ],
  [
    [7, 5, 8, 1],
    [4, 2, 9, 3]
  ],
  [
    [1, 5, 6, 2, 8],
    [2, 8, 4, 7, 9]
  ],
  [
    [3, 3, 6, 1, 5],
    [4, 9, 4, 6, 9]
  ],
  [
    [8, 5, 2, 5, 3, 7],
    [6, 1, 4, 7, 9, 3]
  ],
  [
    [
      9,
      7,
      9,
      6,
      2,
    ],
    []
  ],
  [[], []]
];

void main() async {
  String? codigoAlumno;
  String? edadAlumno;
  int edadNumeroComprobado;

  print('''

    Test Dígitos WISC V
    -------------------
    Puedes salir del Test en cualquier momento tipeando q y presionando Enter.
    -------------------

  ''');

  print('Introduzca el código del alumno: ');
  codigoAlumno = io.stdin.readLineSync();
  salirDelPrograma(codigoAlumno);
  print('Introduzca la edad del alumno: ');
  edadAlumno = io.stdin.readLineSync();
  edadNumeroComprobado = comprobacionNumero(edadAlumno);
  salirDelPrograma(edadAlumno);

  // Instancia de Sujeto
  Sujeto sujeto =
      Sujeto(codigoAlumno!, edadNumeroComprobado); // Utilizando null checker

  Map resultadosTD = testDirecto();
  sujeto.puntuacionDirecta = resultadosTD['aciertos'];
  sujeto.puntuacionDirectaSpan = resultadosTD['span'];
  Map resultadosTI = testInverso();
  sujeto.puntuacionInverso = resultadosTI['aciertos'];
  sujeto.puntuacionInversoSpan = resultadosTI['span'];
  Map resultadosTC = testCreciente(edadNumeroComprobado);
  sujeto.puntuacionCreciente = resultadosTC['aciertos'];
  sujeto.puntuacionCrecienteSpan = resultadosTC['span'];
  sujeto.puntuacionCrecienteIndices = resultadosTC['indices'];

  // Creación del archivo csv

  List<List<dynamic>> listaDatos = [
    ['COD', 'Edad', 'PTD', 'PTDS', 'PTI', 'PTIS', 'PTC', 'PTCS', 'PTCI'],
    [
      sujeto.codigo,
      sujeto.edad,
      sujeto.puntuacionDirecta,
      sujeto.puntuacionDirectaSpan,
      sujeto.puntuacionInverso,
      sujeto.puntuacionInversoSpan,
      sujeto.puntuacionCreciente,
      sujeto.puntuacionCrecienteSpan,
      sujeto.puntuacionCrecienteIndices
    ]
  ];

  String csv = csvlib.ListToCsvConverter().convert(listaDatos);
  io.Directory directory = io.Directory(
      'C:\\Users\\Roberto\\Cursos\\Dart\\proyecto_final\\bin\\csv_resultante');
  if (await directory.exists()) {
    final path = '${directory.path}\\${sujeto.codigo}.csv';
    io.File file = io.File(path);
    file.writeAsString(csv);
  } else {
    directory.create();
    final path = '${directory.path}\\${sujeto.codigo}.csv';
    io.File file = io.File(path);
    file.writeAsString(csv);
  }
}

// Funciones

Map testDirecto() {
  int span = 0;
  int aciertos = 0;
  int fallosEnItem = 0;
  print('''
    Inicio Test Números en Orden Directo
    ${DateTime.now()}
  ''');

  for (var fila in numerosOrdenDirecto) {
    fallosEnItem = 0;
    for (var subfila in fila) {
      while (true) {
        print('Números: $subfila');
        print('Introduce [s] o [n] si ha acertado el Alumno o no.');
        String? haAcertado = io.stdin.readLineSync();
        salirDelPrograma(
            haAcertado); // Podría querer salir del programa en este punto también
        if (haAcertado != null) {
          haAcertado = haAcertado.toLowerCase();
          if (haAcertado == 's') {
            aciertos++;
            break;
          } else if (haAcertado == 'n') {
            fallosEnItem++;
            break;
          } else {
            print('¡Ingresa una respuesta válida!');
          }
        }
      }
    }
    if (fila[0].length > 2) {
      span = fila[0].length - 1;
    }
    if (fallosEnItem == 2) {
      break;
    }
  }
  return {'aciertos': aciertos, 'span': span};
}

Map testInverso() {
  int span = 0;
  int aciertos = 0;
  int fallosEnItem = 0;
  int contEjemplo = 0;

  print('''
    Inicio Test Números en Orden Inverso
    ${DateTime.now()}
  ''');

  for (var fila in numerosOrdenInverso) {
    fallosEnItem = 0;
    for (var subfila in fila) {
      if (contEjemplo == 0) {
        print('Ejemplo: $subfila -> ${subfila[1]}, ${subfila[0]}');
      } else {
        print('\nNúmeros: $subfila');
        while (true) {
          print('Introduce [s] o [n] si ha acertado el Alumno o no.');
          String? haAcertado = io.stdin.readLineSync();
          salirDelPrograma(
              haAcertado); // Podría querer salir del programa en este punto también
          if (haAcertado != null) {
            haAcertado = haAcertado.toLowerCase();
            if (haAcertado == 's') {
              aciertos++;
              span = subfila.length;
              break;
            } else if (haAcertado == 'n') {
              fallosEnItem++;
              break;
            } else {
              print('¡Ingresa una respuesta válida!');
            }
          }
        }
      }
    }
    if (contEjemplo != 0) {
      if (fallosEnItem == 2) {
        break;
      }
    } else {
      contEjemplo++;
    }
  }
  return {'aciertos': aciertos, 'span': span};
}

Map testCreciente(int edad) {
  int span = 0;
  int aciertos = 0;
  int fallosEnItem = 0;
  int contEjemplo = 0;
  int indicesAcertados = 0;

  print('''
    Inicio Test Números en Orden Creciente
    ${DateTime.now()}
  ''');

  if (edad == 6 || edad == 7) {
    print('Requisito: contar hasta 3');
    while (true) {
      print('Introduce [s] o [n] si el Alumno cumple el requisito.');
      String? respuesta = io.stdin.readLineSync();
      salirDelPrograma(respuesta);
      if (respuesta != null) {
        respuesta = respuesta.toLowerCase();
        if (respuesta == 's') {
          for (var fila in numerosOrdenCreciente) {
            fallosEnItem = 0;
            for (var subfila in fila) {
              if (contEjemplo < 2) {
                print('Ejemplo: $subfila -> ${subfila[0]}, ${subfila[1]}');
              } else {
                print('\nNúmeros: $subfila');
                while (true) {
                  print('Introduce [s] o [n] si ha acertado el Alumno o no.');
                  String? haAcertado = io.stdin.readLineSync();
                  salirDelPrograma(
                      haAcertado); // Podría querer salir del programa en este punto también
                  if (haAcertado != null) {
                    haAcertado = haAcertado.toLowerCase();
                    if (haAcertado == 's') {
                      aciertos++;
                      span = subfila.length;
                      indicesAcertados += subfila.length as int;
                      break;
                    } else if (haAcertado == 'n') {
                      fallosEnItem++;
                      break;
                    } else {
                      print('¡Ingresa una respuesta válida!');
                    }
                  }
                }
              }
            }
            if (contEjemplo < 2) {
              if (fallosEnItem == 2) {
                break;
              }
            } else {
              contEjemplo++;
            }
          }
          break;
        } else if (respuesta == 'n') {
          break;
        } else {
          print('¡Ingresa una respuesta válida!');
        }
      }
    }
  } else {
    for (var fila in numerosOrdenCreciente) {
      fallosEnItem = 0;
      for (var subfila in fila) {
        if (contEjemplo < 2) {
          print('Ejemplo: $subfila -> ${subfila[0]}, ${subfila[1]}');
        } else {
          print('\nNúmeros: $subfila');
          while (true) {
            print('Introduce [s] o [n] si ha acertado el Alumno o no.');
            String? haAcertado = io.stdin.readLineSync();
            salirDelPrograma(
                haAcertado); // Podría querer salir del programa en este punto también
            if (haAcertado != null) {
              haAcertado = haAcertado.toLowerCase();
              if (haAcertado == 's') {
                aciertos++;
                span = subfila.length;
                indicesAcertados += subfila.length as int;
                break;
              } else if (haAcertado == 'n') {
                fallosEnItem++;
                break;
              } else {
                print('¡Ingresa una respuesta válida!');
              }
            }
          }
        }
      }
      if (contEjemplo < 2) {
        if (fallosEnItem == 2) {
          break;
        }
      } else {
        contEjemplo++;
      }
    }
  }

  return {'aciertos': aciertos, 'span': span, 'indices': indicesAcertados};
}

void salirDelPrograma(String? entrada) {
  if (entrada == 'q' || entrada == 'Q' || entrada == ' q' || entrada == ' Q') {
    print('¿Estás seguro que quieres salir del programa? Tipea: [S]i o N[o]');
    String? confirmacion = io.stdin.readLineSync();
    if (confirmacion == 'S' ||
        confirmacion == 's' ||
        confirmacion == 'Si' ||
        confirmacion == 'si') {
      io.exit(0);
    } else if (confirmacion == 'N' ||
        confirmacion == 'n' ||
        confirmacion == 'No' ||
        confirmacion == 'no') {
      main();
    }
  }
}

int comprobacionNumero(String? entrada) {
  if (int.tryParse(entrada!) == null) {
    print('Introduce una edad válida.');
    io.exit(0);
  } else {
    return int.parse(entrada);
  }
}
