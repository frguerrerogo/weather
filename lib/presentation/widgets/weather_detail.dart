import 'package:flutter/material.dart';
import 'package:weather/core/config/index.dart' show AppTextStyles;

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
