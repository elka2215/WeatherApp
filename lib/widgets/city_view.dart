import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_forecast_daily.dart';
import 'package:weather_app/utilities/forecast_util.dart';

class CityView extends StatelessWidget {
  const CityView({Key? key, this.snapshot}) : super(key: key);
  final AsyncSnapshot<WeatherForecast>? snapshot;
  // const CityView({this.snapshot});

  @override
  Widget build(BuildContext context) {
    var forecastList = snapshot?.data?.list;
    var city = snapshot?.data?.city?.name;
    var country = snapshot?.data?.city?.country;

    var formattedDate =
        DateTime.fromMicrosecondsSinceEpoch(forecastList![0].dt! * 1000);

    return Container(
      child: Column(
        children: <Widget>[
          Text(
            "$city, $country",
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 28,
                color: Colors.black87),
          ),
          Text(
            Util.getFormattedDate(DateTime.now()), //$ was been
            style: const TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
