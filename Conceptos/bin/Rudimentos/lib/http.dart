import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

void main() async {
  var url =
      Uri.https('www.googleapis.com', '/books/v1/volumes', {'q': '{http}'});
  var response = await http.get(url);

  // print(response.body);
  // El código 200 es que la petición HTTP tuvo éxito
  if (response.statusCode == 200) {
    var dataJSON = convert.jsonDecode(response
        .body); // response.body tiene la información en JSON solicitada en la petición HTTP
    for (var item in dataJSON['items']) {
      print(item['volumeInfo']['authors']);
      if (item['volumeInfo']['authors'] == null) {
        for (var link in dataJSON['items']) {
          print(link['selfLink']);
        }
      }
    }
  }
}
