import 'dart:convert';
import 'dart:developer';
import 'package:weather_app/models/weather_forecast_daily.dart';
import 'package:weather_app/utilities/constants.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/utilities/location.dart';

class WeatherApi {
  Future<WeatherForecast> fetchWeatherForecast(
      {String? cityName, bool? isCity}) async {
    Location location = Location();
    await location.getCurrentLocation();
    Map<String, String?> parameters;
    Map<String, String?> queryParameters = {};

    if (isCity == true) {
      queryParameters = {
        'appid': Constants.WEATHER_APP_ID,
        'units': 'metric',
        'q': cityName
      };
      parameters = queryParameters;
    } else {
      queryParameters = {
        'appid': Constants.WEATHER_APP_ID,
        'units': 'metric',
        'lat': location.latitude.toString(),
        'lon': location.longitude.toString(),
      };
      parameters = queryParameters;
    }

    var uri = Uri.http(Constants.WEATHER_BASE_URL_DOMAIN,
        Constants.WEATHER_FORECAST_PATH, parameters);

    log("reauest: ${uri.toString()}");

    var response = await http.get(uri);
    print('response: ${response.body}');

    if (response.statusCode == 200) {
      return WeatherForecast.fromJson(json.decode(response.body));
    } else {
      return Future.error("error response");
    }
  }
}
