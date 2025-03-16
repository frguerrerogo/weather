import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather/core/config/flavors.dart' show F;
import 'package:weather/core/utils/app_utils.dart';
import 'package:weather/presentation/core/providers/index.dart' show weatherProvider;

class WeatherScreen extends ConsumerStatefulWidget {
  const WeatherScreen({super.key});

  @override
  ConsumerState<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends ConsumerState<WeatherScreen> {
  @override
  void initState() {
    super.initState();
    ref.read(weatherProvider.notifier).getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    final weatherState = ref.watch(weatherProvider);

    return Scaffold(
      appBar: AppBar(title: Text(F.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            if (weatherState.isLoading)
              const CircularProgressIndicator()
            else if (weatherState.errorMessage != null)
              Text(
                weatherState.errorMessage!,
                style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              )
            else if (weatherState.weather != null)
              Column(
                children: [
                  if (weatherState.hour != null)
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            AppUtils.formatDate(weatherState.weatherToday!.datetime),
                            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            weatherState.weather!.timezone,
                            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            '${weatherState.hour!.temp}°C',
                            style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            AppUtils.translateCombinedWeatherConditions(
                              weatherState.hour!.conditions,
                            ),

                            style: const TextStyle(fontSize: 18),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              WeatherDetail(
                                label: "Humedad",
                                value: '${weatherState.hour!.humidity}%',
                              ),
                              WeatherDetail(
                                label: "Viento",
                                value: '${weatherState.hour!.windspeed} km/h',
                              ),
                              WeatherDetail(
                                label: "Sensación",
                                value: '${weatherState.hour!.feelslike}°C',
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  else
                    Text('No data'),
                  const Divider(height: 20, thickness: 1),
                ],
              ),
          ],
        ),
      ),
    );
  }
}

// Widget para mostrar detalles del clima (Humedad, Viento, Sensación)
class WeatherDetail extends StatelessWidget {
  final String label;
  final String value;

  const WeatherDetail({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(label, style: const TextStyle(fontSize: 14, color: Colors.grey)),
        const SizedBox(height: 5),
        Text(value, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      ],
    );
  }
}
