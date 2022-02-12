import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude = 51.160523;
  double? longitude = 71.470356;

  Future<void> getCurrentLocation() async {
    // try {
    //   Position position = await Geolocator.getCurrentPosition(
    //       desiredAccuracy: LocationAccuracy.best);
    //   latitude = position.latitude;
    //   longitude = position.longitude;
    // } catch (e) {
    //   print('Something goes wrong: $e');
    // }
  }
}
