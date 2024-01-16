void main(List<String> arguments){
  """
  Trabajando con datos estructurados
  Tipo de dato: Listas
  """;
  var myFirtsList = ['String', 1, [1, 2], 2.5, true];
  List<String> myStringList = ['Roberto', 'Orlando', 'Santibáñez', 'Muñoz'];
  print(myFirtsList);
  print(myStringList.length);
  print(myStringList.reversed);
  var myFixedList = List<dynamic>.filled(7, dynamic, growable: false); // Declaración y asignación de una lista de tamaño fijo de tipo dinámica
  print(myFixedList);
  myFixedList[0] = 'Sewell';
  myFixedList[1] = 'El Teniente';
  myFixedList[2] = 8;
  myFixedList[3] = ['Codelco', 1, 7.0, true];
  myFixedList[4] = 'Andesmar';
  myFixedList[5] = 'Primogénito';
  myFixedList[6] = 9;
  print(myFixedList);
  // Accediendo a elementos de una lista que está dentro de otra lista
  print(myFixedList[3][3]);
  // Accediendo a elementos de una lista
  print(myFixedList[0]);
  // Agregar elementos a una lista con métodos
  myStringList.add('Ingeniero Informático');
  print(myStringList);
  print(myStringList.last);
}