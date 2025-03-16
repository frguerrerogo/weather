import 'package:weather/data/core/adapters/index.dart' show WeatherAdapter;
import 'package:weather/data/core/datasources/index.dart' show WeatherApi;
import 'package:weather/domain/core/entities/index.dart' show Weather;
import 'package:weather/domain/core/repositories/index.dart' show WeatherRepository;

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherAdapter _weatherAdapter;
  final WeatherApi _weatherApi;

  WeatherRepositoryImpl({required WeatherAdapter weatherAdapter, required WeatherApi weatherApi})
    : _weatherAdapter = weatherAdapter,
      _weatherApi = weatherApi;

  @override
  Future<Weather> getWeather({required double longitude, required double latitude}) async {
    final weather = await _weatherApi.getWeather(longitude: longitude, latitude: latitude);
    return _weatherAdapter.toEntity(weather);
  }
}
