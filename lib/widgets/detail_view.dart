import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:weather_app/models/weather_forecast_daily.dart';
import 'package:weather_app/utilities/forecast_util.dart';

class DetailView extends StatelessWidget {
  // const DetailView({Key? key}) : super(key: key);
  final AsyncSnapshot<WeatherForecast>? snapshot;
  const DetailView({this.snapshot});

  @override
  Widget build(BuildContext context) {
    var forecastList = snapshot?.data?.list;
    var pressure = forecastList![0].pressure! * 0.750062;
    var himidity = forecastList[0].humidity;
    var wind = forecastList[0].speed;

    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Util.getItem(FontAwesomeIcons.thermometerThreeQuarters,
              pressure.round(), "mm Hg"),
          Util.getItem(FontAwesomeIcons.cloudRain, himidity!.toInt(), "%"),
          Util.getItem(FontAwesomeIcons.wind, wind!.toInt(), "m/s"),
        ],
      ),
    );
  }
}
