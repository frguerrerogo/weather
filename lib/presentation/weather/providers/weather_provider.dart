import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:weather/core/di/dependency_injector.dart' show Injector;
import 'package:weather/core/app_utils.dart';
import 'package:weather/domain/core/entities/index.dart' show Day, Hour, Weather;
import 'package:weather/domain/core/repositories/index.dart' show WeatherRepository;

part 'weather_notifier.dart';
part 'weather_state.dart';

final weatherProvider = StateNotifierProvider<WeatherNotifier, WeatherState>((ref) {
  return WeatherNotifier();
});
