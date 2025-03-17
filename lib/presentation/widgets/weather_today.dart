import 'package:flutter/material.dart';
import 'package:weather/core/index.dart' show AppTextStyles, AppUtils;

class WeatherToday extends StatelessWidget {
  const WeatherToday({
    super.key,
    required this.datetime,
    required this.timezone,
    required this.temp,
    required this.conditions,
    required this.humidity,
    required this.windspeed,
    required this.feelslike,
    required this.precipprob,
    required this.uvindex,
    required this.pressure,
  });

  final String datetime;
  final String timezone;
  final double temp;
  final String conditions;
  final double humidity;
  final double windspeed;
  final double feelslike;
  final double precipprob;
  final double uvindex;
  final double pressure;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Text(AppUtils.formatDate(datetime), style: AppTextStyles.bodyLarge(context)),
          Text(timezone, style: AppTextStyles.bodyMedium(context)),
          const SizedBox(height: 10),
          Text('$temp°C', style: AppTextStyles.titleLarge(context)),
          const SizedBox(height: 10),
          Text(
            AppUtils.translateCombinedWeatherConditions(conditions),
            style: AppTextStyles.bodyMedium(context),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WeatherDetail(label: "Humedad", value: '$humidity%'),
              WeatherDetail(label: "Viento", value: '$windspeed km/h'),
              WeatherDetail(label: "Sensación", value: '$feelslike°C'),
            ],
          ),
          const SizedBox(height: 10),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WeatherDetail(label: "Lluvia", value: '$precipprob%'),
              WeatherDetail(label: "Índice UV", value: '$uvindex'),
              WeatherDetail(label: "Presión", value: '$pressure hPa'),
            ],
          ),
        ],
      ),
    );
  }
}

class WeatherDetail extends StatelessWidget {
  const WeatherDetail({super.key, required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      child: Column(
        children: [
          Text(label, style: AppTextStyles.titleSmall(context)),
          const SizedBox(height: 5),
          Text(
            value,
            style: AppTextStyles.bodyMedium(context).copyWith(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
