import 'package:geolocator/geolocator.dart';

class Location{
  late final double latitude;
  late final double longitude;

  Future<void> getCurrentLocation() async {
    await Geolocator.checkPermission();
    await Geolocator.requestPermission();
    try{
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    }catch(exeption){
      print(exeption);
    }
  }
}