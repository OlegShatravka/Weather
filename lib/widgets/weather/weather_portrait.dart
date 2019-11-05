import 'package:flutter/material.dart';
import 'package:weather/models/weather.dart';
import 'package:weather/widgets/centered_text.dart';

class WeatherPortrait extends StatelessWidget {
  const WeatherPortrait({this.weather});

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return Column(
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
