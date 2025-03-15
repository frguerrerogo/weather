import 'package:weather/data/core/adapters/index.dart' show Adapter, HourAdapter;
import 'package:weather/data/core/models/index.dart' show DayModel;
import 'package:weather/domain/weather/core/entities/index.dart' show Day;

class DayAdapter implements Adapter<Day, DayModel> {
  final HourAdapter _hourAdapter;

  DayAdapter({required HourAdapter hourAdapter}) : _hourAdapter = hourAdapter;

  @override
  Day toEntity(DayModel model) {
    return Day(
      datetime: model.datetime,
      datetimeEpoch: model.datetimeEpoch,
      tempmax: model.tempmax,
      tempmin: model.tempmin,
      temp: model.temp,
      feelslikemax: model.feelslikemax,
      feelslikemin: model.feelslikemin,
      feelslike: model.feelslike,
      dew: model.dew,
      humidity: model.humidity,
      precip: model.precip,
      precipprob: model.precipprob,
      precipcover: model.precipcover,
      preciptype: model.preciptype,
      snow: model.snow,
      snowdepth: model.snowdepth,
      windgust: model.windgust,
      windspeed: model.windspeed,
      winddir: model.winddir,
      pressure: model.pressure,
      cloudcover: model.cloudcover,
      visibility: model.visibility,
      solarradiation: model.solarradiation,
      solarenergy: model.solarenergy,
      uvindex: model.uvindex,
      severerisk: model.severerisk,
      sunrise: model.sunrise,
      sunriseEpoch: model.sunriseEpoch,
      sunset: model.sunset,
      sunsetEpoch: model.sunsetEpoch,
      moonphase: model.moonphase,
      conditions: model.conditions,
      description: model.description,
      icon: model.icon,
      stations: model.stations,
      source: model.source,
      hours: model.hours.map(_hourAdapter.toEntity).toList(),
    );
  }

  @override
  DayModel toModel(Day entity) {
    return DayModel(
      datetime: entity.datetime,
      datetimeEpoch: entity.datetimeEpoch,
      tempmax: entity.tempmax,
      tempmin: entity.tempmin,
      temp: entity.temp,
      feelslikemax: entity.feelslikemax,
      feelslikemin: entity.feelslikemin,
      feelslike: entity.feelslike,
      dew: entity.dew,
      humidity: entity.humidity,
      precip: entity.precip,
      precipprob: entity.precipprob,
      precipcover: entity.precipcover,
      preciptype: entity.preciptype,
      snow: entity.snow,
      snowdepth: entity.snowdepth,
      windgust: entity.windgust,
      windspeed: entity.windspeed,
      winddir: entity.winddir,
      pressure: entity.pressure,
      cloudcover: entity.cloudcover,
      visibility: entity.visibility,
      solarradiation: entity.solarradiation,
      solarenergy: entity.solarenergy,
      uvindex: entity.uvindex,
      severerisk: entity.severerisk,
      sunrise: entity.sunrise,
      sunriseEpoch: entity.sunriseEpoch,
      sunset: entity.sunset,
      sunsetEpoch: entity.sunsetEpoch,
      moonphase: entity.moonphase,
      conditions: entity.conditions,
      description: entity.description,
      icon: entity.icon,
      stations: entity.stations,
      source: entity.source,
      hours: entity.hours.map(_hourAdapter.toModel).toList(),
    );
  }
}
