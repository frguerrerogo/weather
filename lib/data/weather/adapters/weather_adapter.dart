import 'package:weather/data/core/adapters/index.dart'
    show Adapter, CurrentConditionsAdapter, DayAdapter, RealmAdapter, StationAdapter;
import 'package:weather/data/core/models/index.dart' show WeatherModel;
import 'package:weather/data/weather/realms/weather_realms.dart' show WeatherRealm;
import 'package:weather/domain/core/entities/index.dart' show Weather;

class WeatherAdapter extends Adapter<Weather, WeatherModel>
    with RealmAdapter<Weather, WeatherRealm> {
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
  Weather modelToEntity(WeatherModel model) {
    return Weather(
      queryCost: model.queryCost ?? 0.0,
      latitude: model.latitude ?? 0.0,
      longitude: model.longitude ?? 0.0,
      resolvedAddress: model.resolvedAddress ?? '',
      address: model.address ?? '',
      timezone: model.timezone ?? '',
      tzoffset: model.tzoffset ?? 0.0,
      description: model.description ?? '',
      days: (model.days ?? []).map(_dayAdapter.modelToEntity).toList(),
      alerts: model.alerts ?? [],
      stations: (model.stations ?? {}).map(
        (key, entity) => MapEntry(key, _stationAdapter.modelToEntity(entity)),
      ),
      currentConditions:
          model.currentConditions != null
              ? _currentConditionsAdapter.modelToEntity(model.currentConditions!)
              : null,
    );
  }

  @override
  WeatherModel entityToModel(Weather entity) {
    return WeatherModel(
      queryCost: entity.queryCost,
      latitude: entity.latitude,
      longitude: entity.longitude,
      resolvedAddress: entity.resolvedAddress,
      address: entity.address,
      timezone: entity.timezone,
      tzoffset: entity.tzoffset,
      description: entity.description,
      days: entity.days.map(_dayAdapter.entityToModel).toList(),
      alerts: entity.alerts,
      stations: entity.stations.map(
        (key, entity) => MapEntry(key, _stationAdapter.entityToModel(entity)),
      ),
      currentConditions:
          entity.currentConditions != null
              ? _currentConditionsAdapter.entityToModel(entity.currentConditions!)
              : null,
    );
  }

  @override
  WeatherRealm entityToRealm(Weather entity) {
    return WeatherRealm(
      'weather',
      entity.queryCost,
      entity.latitude,
      entity.longitude,
      entity.resolvedAddress,
      entity.address,
      entity.timezone,
      entity.tzoffset,
      entity.description,
      days: entity.days.map(_dayAdapter.entityToRealm),
      alerts: entity.alerts.map((e) => e),
      stations: entity.stations.values.map(_stationAdapter.entityToRealm).toList(),
      currentConditions:
          entity.currentConditions != null
              ? _currentConditionsAdapter.entityToRealm(entity.currentConditions!)
              : null,
    );
  }

  @override
  Weather realmToEntity(WeatherRealm realm) {
    return Weather(
      queryCost: realm.queryCost,
      latitude: realm.latitude,
      longitude: realm.longitude,
      resolvedAddress: realm.resolvedAddress,
      address: realm.address,
      timezone: realm.timezone,
      tzoffset: realm.tzoffset,
      description: realm.description,
      days: realm.days.map(_dayAdapter.realmToEntity).toList(),
      alerts: realm.alerts,
      stations: realm.stations.asMap().map(
        (_, stationRealm) => MapEntry(stationRealm.id, _stationAdapter.realmToEntity(stationRealm)),
      ),
      currentConditions:
          realm.currentConditions != null
              ? _currentConditionsAdapter.realmToEntity(realm.currentConditions!)
              : null,
    );
  }
}
