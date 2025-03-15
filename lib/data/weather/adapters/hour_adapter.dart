import 'package:weather/data/core/adapters/index.dart' show Adapter;
import 'package:weather/data/core/models/index.dart' show HourModel;
import 'package:weather/domain/weather/core/entities/index.dart' show Hour;

class HourAdapter implements Adapter<Hour, HourModel> {
  @override
  Hour toEntity(HourModel model) {
    return Hour(
      datetime: model.datetime,
      datetimeEpoch: model.datetimeEpoch,
      temp: model.temp,
      feelslike: model.feelslike,
      humidity: model.humidity,
      dew: model.dew,
      precip: model.precip,
      precipprob: model.precipprob,
      snow: model.snow,
      snowdepth: model.snowdepth,
      windgust: model.windgust,
      windspeed: model.windspeed,
      winddir: model.winddir,
      pressure: model.pressure,
      visibility: model.visibility,
      cloudcover: model.cloudcover,
      solarradiation: model.solarradiation,
      solarenergy: model.solarenergy,
      uvindex: model.uvindex,
      severerisk: model.severerisk,
      conditions: model.conditions,
      icon: model.icon,
      source: model.source,
    );
  }

  @override
  HourModel toModel(Hour entity) {
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
}
