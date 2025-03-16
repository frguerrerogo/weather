import 'package:weather/data/core/adapters/index.dart' show WeatherAdapter;
import 'package:weather/data/core/datasources/local/index.dart' show RealmDataSource;
import 'package:weather/data/core/datasources/remote/index.dart' show WeatherApi;
import 'package:weather/domain/core/entities/index.dart' show Weather;
import 'package:weather/domain/core/repositories/index.dart' show WeatherRepository;

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherAdapter _weatherAdapter;
  final WeatherApi _weatherApi;
  final RealmDataSource _realmDataSource;

  WeatherRepositoryImpl({
    required WeatherAdapter weatherAdapter,
    required WeatherApi weatherApi,
    required RealmDataSource realmDataSource,
  }) : _weatherAdapter = weatherAdapter,
       _weatherApi = weatherApi,
       _realmDataSource = realmDataSource;

  @override
  Future<Weather> fetchWeatherFromRemote({
    required double longitude,
    required double latitude,
  }) async {
    final weather = await _weatherApi.fetchWeather(longitude: longitude, latitude: latitude);
    return _weatherAdapter.modelToEntity(weather);
  }

  @override
  Weather? getWeatherFromLocal() {
    final weatherRealm = _realmDataSource.getWeather();
    if (weatherRealm != null) {
      return _weatherAdapter.realmToEntity(weatherRealm);
    }
    return null;
  }

  @override
  saveWeather(Weather weather) {
    _realmDataSource.saveWeather(_weatherAdapter.entityToRealm(weather));
  }
}
