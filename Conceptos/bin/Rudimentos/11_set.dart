void main(List<String> arguments){
 var myFirstSet = <String>{
  'Trabajando.com', 
  'Indeed.com', 
  'Yapo.cl', 
  'Computrabajo.cl'
  };
  print('El elemento en la posición 1 es: ${myFirstSet.elementAt(1)}');
  print(myFirstSet.runtimeType);
  print(myFirstSet);
  myFirstSet.add('Laborum.cl');
  print(myFirstSet);
  myFirstSet.remove('Yapo.cl');
  print(myFirstSet);
  print(myFirstSet.length);
  myFirstSet.clear();
  print(myFirstSet);
}