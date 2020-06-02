import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkHelper {
  final String url;
  NetworkHelper(this.url);

  Future getData() async {
    print('Networking : Url : $url');
    http.Response response = await http.get(url);
    if (response.statusCode == 200) {
      String data = response.body;
      print('networking : $data');
      var decodeData = jsonDecode(data);
      return decodeData;
    } else {
      print(response.statusCode);
    }
  }
}
