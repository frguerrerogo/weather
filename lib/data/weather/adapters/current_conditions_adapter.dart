import 'package:weather/data/core/adapters/index.dart' show Adapter;
import 'package:weather/data/core/models/index.dart' show CurrentConditionsModel;
import 'package:weather/domain/weather/core/entities/index.dart' show CurrentConditions;

class CurrentConditionsAdapter implements Adapter<CurrentConditions, CurrentConditionsModel> {
  @override
  CurrentConditions toEntity(CurrentConditionsModel model) {
    return CurrentConditions(
      datetime: model.datetime,
      datetimeEpoch: model.datetimeEpoch,
      temp: model.temp,
      feelslike: model.feelslike,
      humidity: model.humidity,
      dew: model.dew,
      precipprob: model.precipprob,
      snow: model.snow,
      snowdepth: model.snowdepth,
      windspeed: model.windspeed,
      winddir: model.winddir,
      pressure: model.pressure,
      visibility: model.visibility,
      cloudcover: model.cloudcover,
      solarradiation: model.solarradiation,
      solarenergy: model.solarenergy,
      uvindex: model.uvindex,
      conditions: model.conditions,
      icon: model.icon,
      stations: model.stations,
      source: model.source,
      sunrise: model.sunrise,
      sunriseEpoch: model.sunriseEpoch,
      sunset: model.sunset,
      sunsetEpoch: model.sunsetEpoch,
      moonphase: model.moonphase,
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
