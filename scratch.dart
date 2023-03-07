import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 complete');
}

Future task2() async {
  Duration threeSecons = Duration(seconds: 4);
  // sleep(threeSecons);
  String result;
  await Future.delayed(threeSecons, (){
    result = 'task 2 data';
    print("acabe");
  });
  return 'task 2 data';
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 complete');
}



/*import 'dart:convert' as convert;
import 'package:http/http.dart';

class Weather {
  Weather({required this.longitude, required this.latitude});

  double longitude;
  double latitude;

  static const String _apiKey = '----------your key---------';
  static const String _apiUrl = "api.openweathermap.org";
  static const String _apiUrlRoute = '/data/2.5/weather';

  Future<void> getData() async {
    var url = Uri.http(_apiUrl, _apiUrlRoute, {
      'lat': latitude.toString(),
      'lon': longitude.toString(),
      'appid': _apiKey
    });
    Response res = await get(url);
    if (res.statusCode == 200) {
      print(res.body);
    } else {
      print('Request failed with status: ${res.statusCode}.');
    }
  }
}*/