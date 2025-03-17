import 'package:flutter/material.dart';
import 'package:weather/core/config/index.dart' show AppTextStyles;

class EventsScreen extends StatelessWidget {
  const EventsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('No hay datos disponibles', style: AppTextStyles.bodyMedium(context)),
      ),
    );
  }
}
