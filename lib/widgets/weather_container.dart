import 'package:flutter/material.dart';

import 'package:weather/models/weather.dart';
import 'package:weather/widgets/weather/weather_lanscape.dart';
import 'package:weather/widgets/weather/weather_portrait.dart';

class WeatherContainer extends StatelessWidget {
  const WeatherContainer({Key key, @required this.weather})
      : assert(weather != null),
        super(key: key);

  final Weather weather;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return WeatherPortrait(
            weather: weather,
          );
        }
        return WeatherLandscape(
          weather: weather,
        );
      },
    );
  }
}
