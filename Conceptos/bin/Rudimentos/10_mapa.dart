void main(List<String> arguments) {
  Map myFirstMap = {
    'name' : 'Rob',
    'lastname' : 'Santi',
    'city': 'Valdi'
  };
  print(myFirstMap);
  print(myFirstMap.length);
  print(myFirstMap.keys);
  print(myFirstMap.values); 
  List myList = ['Gorro', 8, 'Desktop', 'Ventana', 'Lluvia', 6.9];
  Map myListAsMap = myList.asMap();
  print(myListAsMap);
}