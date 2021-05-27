import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.uri);

  final String uri;

  Future getData() async {
    var parsedUri = Uri.parse(uri);
    http.Response response = await http.get(parsedUri);

    if (response.statusCode == 200) {
      String data = response.body;
      return jsonDecode(data);

    } else {
      print(response.statusCode);
    }
  }
}