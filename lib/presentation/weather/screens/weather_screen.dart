import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:weather/core/config/index.dart' show AppTextStyles;
import 'package:weather/core/config/flavors/flavors.dart' show F;

import 'package:weather/presentation/core/providers/index.dart'
    show connectivityProvider, weatherProvider;
import 'package:weather/presentation/core/widgets/index.dart' show WeatherDayCard, WeatherToday;

class WeatherScreen extends ConsumerStatefulWidget {
  const WeatherScreen({super.key});

  @override
  ConsumerState<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends ConsumerState<WeatherScreen> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _requestLocationPermission();
  }

  Future<void> _requestLocationPermission() async {
    final hasInternet = ref.read(connectivityProvider);
    await Permission.location.request();
    ref.read(weatherProvider.notifier).initLoad(hasInternet);
  }

  @override
  Widget build(BuildContext context) {
    final weatherState = ref.watch(weatherProvider);
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: colorScheme.primaryContainer,

      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(F.title, style: AppTextStyles.headlineMedium(context)),
              ),

              if (weatherState.isLoading)
                Center(child: const CircularProgressIndicator())
              else if (weatherState.errorMessage != null)
                Text(
                  weatherState.errorMessage!,
                  style: AppTextStyles.errorText(context),
                  textAlign: TextAlign.center,
                )
              else if (weatherState.weather != null)
                Column(
                  children: [
                    if (weatherState.hour != null)
                      WeatherToday(
                        datetime: weatherState.weatherToday!.datetime,
                        timezone: weatherState.weather!.timezone,
                        temp: weatherState.hour!.temp,
                        conditions: weatherState.hour!.conditions,
                        humidity: weatherState.hour!.humidity,
                        windspeed: weatherState.hour!.windspeed,
                        feelslike: weatherState.hour!.feelslike,
                        precipprob: weatherState.hour!.precipprob,
                        uvindex: weatherState.hour!.uvindex,
                        pressure: weatherState.hour!.pressure,
                      )
                    else
                      Text('No data'),
                    if (weatherState.hour != null)
                      ...weatherState.last5Days.map((day) => WeatherDayCard(day: day)),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
