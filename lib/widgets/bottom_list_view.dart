import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_forecast_daily.dart';
import 'package:weather_app/widgets/forecast_card.dart';

class BottomListView extends StatelessWidget {
  final AsyncSnapshot<WeatherForecast>? snapshot;
  BottomListView({this.snapshot});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          "7-Days Weather Forecast".toUpperCase(),
          style: TextStyle(
              fontSize: 20, color: Colors.black87, fontWeight: FontWeight.bold),
        ),
        Container(
          height: 140,
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) => SizedBox(width: 10),
            itemCount: snapshot!.data!.list!.length,
            itemBuilder: (BuildContext context, index) => Container(
              width: MediaQuery.of(context).size.width / 2.5,
              height: 160,
              color: Colors.black87,
              child: forecastCard(snapshot!, index),
            ),
          ),
        ),
      ],
    );
  }
}
