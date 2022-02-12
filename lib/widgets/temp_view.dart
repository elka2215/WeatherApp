import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_forecast_daily.dart';

class TempView extends StatelessWidget {
  final AsyncSnapshot<WeatherForecast> snapshot;
  const TempView({required this.snapshot}); // required

  @override
  Widget build(BuildContext context) {
    var forecastList = snapshot.data?.list;
    var icon = forecastList![0].getIconUrl();
    var temp = forecastList[0].temp?.day?.toStringAsFixed(0);
    var discription = forecastList[0].weather![0].description?.toUpperCase();
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.network(
            icon,
            scale: 0.6,
            // color: Colors.black87,
          ),
          SizedBox(width: 20),
          Column(
            children: <Widget>[
              Text(
                "$temp °C",
                style: const TextStyle(fontSize: 54, color: Colors.black87),
              ),
              Text(
                "$discription",
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
