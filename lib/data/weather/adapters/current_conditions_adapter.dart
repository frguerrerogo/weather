import 'package:weather/data/core/adapters/index.dart' show Adapter;
import 'package:weather/data/core/models/index.dart' show CurrentConditionsModel;
import 'package:weather/domain/core/entities/index.dart' show CurrentConditions;

class CurrentConditionsAdapter implements Adapter<CurrentConditions, CurrentConditionsModel> {
  @override
  CurrentConditions toEntity(CurrentConditionsModel model) {
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
  CurrentConditionsModel toModel(CurrentConditions entity) {
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
}
