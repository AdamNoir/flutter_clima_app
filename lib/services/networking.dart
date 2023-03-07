import 'dart:convert';
import 'package:http/http.dart' as http;

class NetworkingHelper{
  final String url;
  NetworkingHelper({required this.url});

  Future getData() async {
    var urlParse = Uri.parse(url);
    http.Response response = await http.get(urlParse);
    if(response.statusCode == 200){
      String data = response.body;
      var decodeData = jsonDecode(data);
      return decodeData;
    }else{
      print('ERROR!');
    }
  }
}