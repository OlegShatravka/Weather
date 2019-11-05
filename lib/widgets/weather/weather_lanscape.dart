import 'package:flutter/material.dart';
import 'package:weather/models/weather.dart';
import 'package:weather/widgets/centered_text.dart';

class WeatherLandscape extends StatelessWidget {
  const WeatherLandscape({this.weather});

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CenteredText(text: weather.locationName),
        CenteredText(
          text: '${weather.temperature} °C',
        ),
        Image.network(weather.iconUrl),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}
