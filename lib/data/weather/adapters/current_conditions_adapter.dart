import 'package:weather/data/core/adapters/index.dart' show Adapter, RealmAdapter;
import 'package:weather/data/core/models/index.dart' show CurrentConditionsModel;
import 'package:weather/data/core/realm/index.dart' show CurrentConditionsRealm;
import 'package:weather/domain/core/entities/index.dart' show CurrentConditions;

class CurrentConditionsAdapter extends Adapter<CurrentConditions, CurrentConditionsModel>
    with RealmAdapter<CurrentConditions, CurrentConditionsRealm> {
  @override
  CurrentConditions modelToEntity(CurrentConditionsModel model) {
    return CurrentConditions(
      datetime: model.datetime ?? '',
      datetimeEpoch: model.datetimeEpoch ?? 0,
      temp: model.temp ?? 0.0,
      feelslike: model.feelslike ?? 0.0,
      humidity: model.humidity ?? 0.0,
      dew: model.dew ?? 0.0,
      precipprob: model.precipprob ?? 0.0,
      snow: model.snow ?? 0.0,
      snowdepth: model.snowdepth ?? 0.0,
      windspeed: model.windspeed ?? 0.0,
      winddir: model.winddir ?? 0.0,
      pressure: model.pressure ?? 0.0,
      visibility: model.visibility ?? 0.0,
      cloudcover: model.cloudcover ?? 0.0,
      solarradiation: model.solarradiation ?? 0.0,
      solarenergy: model.solarenergy ?? 0.0,
      uvindex: model.uvindex ?? 0.0,
      conditions: model.conditions ?? '',
      icon: model.icon ?? '',
      stations: model.stations ?? [],
      source: model.source ?? '',
      sunrise: model.sunrise ?? '',
      sunriseEpoch: model.sunriseEpoch ?? 0,
      sunset: model.sunset ?? '',
      sunsetEpoch: model.sunsetEpoch ?? 0,
      moonphase: model.moonphase ?? 0.0,
    );
  }

  @override
  CurrentConditionsModel entityToModel(CurrentConditions entity) {
    return CurrentConditionsModel(
      datetime: entity.datetime,
      datetimeEpoch: entity.datetimeEpoch,
      temp: entity.temp,
      feelslike: entity.feelslike,
      humidity: entity.humidity,
      dew: entity.dew,
      precipprob: entity.precipprob,
      snow: entity.snow,
      snowdepth: entity.snowdepth,
      windspeed: entity.windspeed,
      winddir: entity.winddir,
      pressure: entity.pressure,
      visibility: entity.visibility,
      cloudcover: entity.cloudcover,
      solarradiation: entity.solarradiation,
      solarenergy: entity.solarenergy,
      uvindex: entity.uvindex,
      conditions: entity.conditions,
      icon: entity.icon,
      stations: entity.stations,
      source: entity.source,
      sunrise: entity.sunrise,
      sunriseEpoch: entity.sunriseEpoch,
      sunset: entity.sunset,
      sunsetEpoch: entity.sunsetEpoch,
      moonphase: entity.moonphase,
    );
  }

  @override
  CurrentConditionsRealm entityToRealm(CurrentConditions entity) {
    return CurrentConditionsRealm(
      entity.datetime,
      entity.datetimeEpoch,
      entity.temp,
      entity.feelslike,
      entity.humidity,
      entity.dew,
      entity.precip ?? 0.0,
      entity.precipprob,
      entity.snow,
      entity.snowdepth,
      entity.windgust ?? 0.0,
      entity.windspeed,
      entity.winddir,
      entity.pressure,
      entity.visibility,
      entity.cloudcover,
      entity.solarradiation,
      entity.solarenergy,
      entity.uvindex,
      entity.conditions,
      entity.icon,
      entity.source,
      entity.sunrise,
      entity.sunriseEpoch,
      entity.sunset,
      entity.sunsetEpoch,
      entity.moonphase,
    );
  }

  @override
  CurrentConditions realmToEntity(CurrentConditionsRealm realm) {
    return CurrentConditions(
      datetime: realm.datetime,
      datetimeEpoch: realm.datetimeEpoch,
      temp: realm.temp,
      feelslike: realm.feelslike,
      humidity: realm.humidity,
      dew: realm.dew,
      precipprob: realm.precipprob,
      snow: realm.snow,
      snowdepth: realm.snowdepth,
      windspeed: realm.windspeed,
      winddir: realm.winddir,
      pressure: realm.pressure,
      visibility: realm.visibility,
      cloudcover: realm.cloudcover,
      solarradiation: realm.solarradiation,
      solarenergy: realm.solarenergy,
      uvindex: realm.uvindex,
      conditions: realm.conditions,
      icon: realm.icon,
      stations: realm.stations,
      source: realm.source,
      sunrise: realm.sunrise,
      sunriseEpoch: realm.sunriseEpoch,
      sunset: realm.sunset,
      sunsetEpoch: realm.sunsetEpoch,
      moonphase: realm.moonphase,
    );
  }
}
