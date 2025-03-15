import 'package:weather/data/core/adapters/index.dart'
    show Adapter, CurrentConditionsAdapter, DayAdapter, StationAdapter;
import 'package:weather/data/core/models/index.dart' show WeatherModel;
import 'package:weather/domain/weather/core/entities/index.dart' show Weather;

class WeatherAdapter implements Adapter<Weather, WeatherModel> {
  final DayAdapter _dayAdapter;
  final StationAdapter _stationAdapter;
  final CurrentConditionsAdapter _currentConditionsAdapter;

  WeatherAdapter({
    required DayAdapter dayAdapter,
    required StationAdapter stationAdapter,
    required CurrentConditionsAdapter currentConditionsAdapter,
  }) : _dayAdapter = dayAdapter,
       _stationAdapter = stationAdapter,
       _currentConditionsAdapter = currentConditionsAdapter;

  @override
  Weather toEntity(WeatherModel model) {
    return Weather(
      queryCost: model.queryCost,
      latitude: model.latitude,
      longitude: model.longitude,
      resolvedAddress: model.resolvedAddress,
      address: model.address,
      timezone: model.timezone,
      tzoffset: model.tzoffset,
      description: model.description,
      days: model.days.map(_dayAdapter.toEntity).toList(),
      alerts: model.alerts,
      stations: model.stations.map((key, entity) => MapEntry(key, _stationAdapter.toEntity(entity))),
      currentConditions: _currentConditionsAdapter.toEntity(model.currentConditions),
    );
  }

  @override
  WeatherModel toModel(Weather entity) {
    return WeatherModel(
      queryCost: entity.queryCost,
      latitude: entity.latitude,
      longitude: entity.longitude,
      resolvedAddress: entity.resolvedAddress,
      address: entity.address,
      timezone: entity.timezone,
      tzoffset: entity.tzoffset,
      description: entity.description,
      days: entity.days.map(_dayAdapter.toModel).toList(),
      alerts: entity.alerts,
      stations: entity.stations.map((key, entity) => MapEntry(key, _stationAdapter.toModel(entity))),
      currentConditions: _currentConditionsAdapter.toModel(entity.currentConditions),
    );
  }
}
