import 'package:weather/data/core/adapters/index.dart' show Adapter, RealmAdapter;
import 'package:weather/data/core/models/index.dart' show HourModel;
import 'package:weather/data/core/realm/index.dart' show HourRealm;
import 'package:weather/domain/core/entities/index.dart' show Hour;

class HourAdapter extends Adapter<Hour, HourModel> with RealmAdapter<Hour, HourRealm> {
  @override
  Hour modelToEntity(HourModel model) {
    return Hour(
      datetime: model.datetime ?? '',
      datetimeEpoch: model.datetimeEpoch ?? 0,
      temp: model.temp ?? 0.0,
      feelslike: model.feelslike ?? 0.0,
      humidity: model.humidity ?? 0.0,
      dew: model.dew ?? 0.0,
      precip: model.precip ?? 0.0,
      precipprob: model.precipprob ?? 0.0,
      snow: model.snow ?? 0.0,
      snowdepth: model.snowdepth ?? 0.0,
      windgust: model.windgust ?? 0.0,
      windspeed: model.windspeed ?? 0.0,
      winddir: model.winddir ?? 0.0,
      pressure: model.pressure ?? 0.0,
      visibility: model.visibility ?? 0.0,
      cloudcover: model.cloudcover ?? 0.0,
      solarradiation: model.solarradiation ?? 0.0,
      solarenergy: model.solarenergy ?? 0.0,
      uvindex: model.uvindex ?? 0.0,
      severerisk: model.severerisk ?? 0.0,
      conditions: model.conditions ?? '',
      icon: model.icon ?? '',
      source: model.source ?? '',
    );
  }

  @override
  HourModel entityToModel(Hour entity) {
    return HourModel(
      datetime: entity.datetime,
      datetimeEpoch: entity.datetimeEpoch,
      temp: entity.temp,
      feelslike: entity.feelslike,
      humidity: entity.humidity,
      dew: entity.dew,
      precip: entity.precip,
      precipprob: entity.precipprob,
      snow: entity.snow,
      snowdepth: entity.snowdepth,
      windgust: entity.windgust,
      windspeed: entity.windspeed,
      winddir: entity.winddir,
      pressure: entity.pressure,
      visibility: entity.visibility,
      cloudcover: entity.cloudcover,
      solarradiation: entity.solarradiation,
      solarenergy: entity.solarenergy,
      uvindex: entity.uvindex,
      severerisk: entity.severerisk,
      conditions: entity.conditions,
      icon: entity.icon,
      source: entity.source,
    );
  }

  @override
  HourRealm entityToRealm(Hour entity) {
    return HourRealm(
      entity.datetime,
      entity.datetimeEpoch,
      entity.temp,
      entity.feelslike,
      entity.humidity,
      entity.dew,
      entity.precip,
      entity.precipprob,
      entity.snow,
      entity.snowdepth,
      entity.windgust,
      entity.windspeed,
      entity.winddir,
      entity.pressure,
      entity.visibility,
      entity.cloudcover,
      entity.solarradiation,
      entity.solarenergy,
      entity.uvindex,
      entity.severerisk,
      entity.conditions,
      entity.icon,
      entity.source,
    );
  }

  @override
  Hour realmToEntity(HourRealm realm) {
    return Hour(
      datetime: realm.datetime,
      datetimeEpoch: realm.datetimeEpoch,
      temp: realm.temp,
      feelslike: realm.feelslike,
      humidity: realm.humidity,
      dew: realm.dew,
      precip: realm.precip,
      precipprob: realm.precipprob,
      snow: realm.snow,
      snowdepth: realm.snowdepth,
      windgust: realm.windgust,
      windspeed: realm.windspeed,
      winddir: realm.winddir,
      pressure: realm.pressure,
      visibility: realm.visibility,
      cloudcover: realm.cloudcover,
      solarradiation: realm.solarradiation,
      solarenergy: realm.solarenergy,
      uvindex: realm.uvindex,
      severerisk: realm.severerisk,
      conditions: realm.conditions,
      icon: realm.icon,
      source: realm.source,
    );
  }
}
