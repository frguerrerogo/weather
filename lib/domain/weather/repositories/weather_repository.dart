import 'package:weather/domain/core/entities/index.dart' show Weather;

abstract class WeatherRepository {
  Future<Weather> getWeather({required double latitude, required double longitude});
}
