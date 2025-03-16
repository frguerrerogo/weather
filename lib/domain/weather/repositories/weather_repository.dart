import 'package:weather/domain/core/entities/index.dart' show Weather;

abstract class WeatherRepository {
  Future<Weather> fetchWeatherFromRemote({required double latitude, required double longitude});
  Weather? getWeatherFromLocal();
  saveWeather(Weather weather);
}
