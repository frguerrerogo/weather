import 'package:flutter/material.dart';
import 'package:weather/core/index.dart' show AppTextStyles, AppUtils;
import 'package:weather/domain/core/entities/index.dart' show Day;

class WeatherDayCard extends StatelessWidget {
  final Day day;

  const WeatherDayCard({super.key, required this.day});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Fecha y ícono del clima
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(AppUtils.formatDate(day.datetime), style: AppTextStyles.titleSmall(context)),
                Icon(
                  _getWeatherIcon(day.conditions),
                  color: _getWeatherColor(day.conditions),
                  size: 32,
                ),
              ],
            ),
            const SizedBox(height: 12),

            // Temperaturas
            _buildWeatherInfoRow(
              context: context,
              icon: Icons.thermostat,
              iconColor: Colors.red,
              title: 'Temperatura',
              value: '${day.temp}°C (Máx: ${day.tempmax}°C / Mín: ${day.tempmin}°C)',
            ),
            const SizedBox(height: 8),

            Row(
              children: [
                // Sensación térmica
                Flexible(
                  child: _buildWeatherInfoRow(
                    context: context,
                    icon: Icons.device_thermostat,
                    iconColor: Colors.orange,
                    title: 'Sensación',
                    value: '${day.feelslike}°C',
                  ),
                ),
                Spacer(),

                // Humedad
                Flexible(
                  child: _buildWeatherInfoRow(
                    context: context,
                    icon: Icons.opacity,
                    iconColor: Colors.blue,
                    title: 'Humedad',
                    value: '${day.humidity}%',
                  ),
                ),
              ],
            ),

            const SizedBox(height: 8),

            // Viento
            _buildWeatherInfoRow(
              context: context,
              icon: Icons.air,
              iconColor: Colors.green,
              title: 'Viento',
              value: '${day.windspeed} km/h (Dirección: ${day.winddir}°)',
            ),
            const SizedBox(height: 8),

            // Precipitación
            _buildWeatherInfoRow(
              context: context,
              icon: Icons.water_drop,
              iconColor: Colors.lightBlue,
              title: 'Precipitación',
              value: '${day.precip} mm (Probabilidad: ${day.precipprob}%)',
            ),
            const SizedBox(height: 8),

            // Amanecer y Atardecer
            Row(
              children: [
                Expanded(
                  child: _buildWeatherInfoRow(
                    context: context,
                    icon: Icons.wb_sunny,
                    iconColor: Colors.amber,
                    title: 'Amanecer',
                    value: day.sunrise,
                  ),
                ),
                Spacer(),
                Expanded(
                  child: _buildWeatherInfoRow(
                    context: context,
                    icon: Icons.nightlight_round,
                    iconColor: Colors.deepPurple,
                    title: 'Atardecer',
                    value: day.sunset,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Método para construir una fila de información climática
  Widget _buildWeatherInfoRow({
    required BuildContext context,
    required IconData icon,
    required Color iconColor,
    required String title,
    required String value,
  }) {
    return Row(
      children: [
        Icon(icon, color: iconColor, size: 20),
        const SizedBox(width: 8),
        Expanded(
          child: RichText(
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: [
                TextSpan(
                  text: '$title: ',
                  style: AppTextStyles.bodySmall(context).copyWith(fontWeight: FontWeight.bold),
                ),
                TextSpan(text: value),
              ],
            ),
          ),
        ),
      ],
    );
  }

  // Método para obtener el ícono del clima según las condiciones
  IconData _getWeatherIcon(String conditions) {
    switch (conditions.toLowerCase()) {
      case 'clear':
        return Icons.wb_sunny;
      case 'cloudy':
        return Icons.cloud;
      case 'rain':
        return Icons.beach_access;
      case 'snow':
        return Icons.ac_unit;
      case 'wind':
        return Icons.air;
      default:
        return Icons.wb_cloudy;
    }
  }

  // Método para obtener el color del ícono según las condiciones
  Color _getWeatherColor(String conditions) {
    switch (conditions.toLowerCase()) {
      case 'clear':
        return Colors.amber;
      case 'cloudy':
        return Colors.blueGrey;
      case 'rain':
        return Colors.blue;
      case 'snow':
        return Colors.lightBlue;
      case 'wind':
        return Colors.green;
      default:
        return Colors.grey;
    }
  }
}
