import 'package:flutter/material.dart';

import 'package:weather/models/weather.dart';
import 'package:weather/widgets/weather_container.dart';
import 'package:weather/providers/weather_provider.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({
    Key key,
  }) : super(key: key);

  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final _weatherProvider = WeatherProvider();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Weather'),
      ),
      body: Center(
        child: FutureBuilder<Weather>(
          future: _weatherProvider.getCurrentWeather(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return WeatherContainer(weather: snapshot.data);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return const CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
