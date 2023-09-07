void main(List<String> arguments){
  // Ejemplo 1
  String stringToParsing = '792391729812';
  int stringToParsingResult = int.parse(stringToParsing);
  print(stringToParsingResult.runtimeType); // int
  '''
    Ejemplo de error
    var sustraction = stringToParsing - 239;
    Error: The operator '-' isn't defined for the type 'String'. 
  ''';
  var addition = stringToParsingResult + 9294902;
  print(addition);
  // Ejemplo 2
  '''
    Ejemplo de error
    print('Beast number' + myNumber);
    Error: The argument type 'int' can't be assigned to the parameter type 'String'.
  ''';
  // int myNumber = 666;
  // print('Beast number: ' + myNumber.toString());
  // Ejemplo 3
  double myDoubleNumber = 713221.2883189381923891;
  String myDoubleNumberParsed = myDoubleNumber.toStringAsFixed(2); // 713221.29
  print(myDoubleNumberParsed);
}