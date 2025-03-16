import 'package:weather/data/core/adapters/index.dart' show Adapter, HourAdapter;
import 'package:weather/data/core/models/index.dart' show DayModel;
import 'package:weather/domain/core/entities/index.dart' show Day;

class DayAdapter implements Adapter<Day, DayModel> {
  final HourAdapter _hourAdapter;

  DayAdapter({required HourAdapter hourAdapter}) : _hourAdapter = hourAdapter;

  @override
  Day toEntity(DayModel model) {
    return Day(
      datetime: model.datetime ?? '',
      datetimeEpoch: model.datetimeEpoch ?? 0,
      tempmax: model.tempmax ?? 0.0,
      tempmin: model.tempmin ?? 0.0,
      temp: model.temp ?? 0.0,
      feelslikemax: model.feelslikemax ?? 0.0,
      feelslikemin: model.feelslikemin ?? 0.0,
      feelslike: model.feelslike ?? 0.0,
      dew: model.dew ?? 0.0,
      humidity: model.humidity ?? 0.0,
      precip: model.precip ?? 0.0,
      precipprob: model.precipprob ?? 0.0,
      precipcover: model.precipcover ?? 0.0,
      preciptype: model.preciptype ?? [],
      snow: model.snow ?? 0.0,
      snowdepth: model.snowdepth ?? 0.0,
      windgust: model.windgust ?? 0.0,
      windspeed: model.windspeed ?? 0.0,
      winddir: model.winddir ?? 0.0,
      pressure: model.pressure ?? 0.0,
      cloudcover: model.cloudcover ?? 0.0,
      visibility: model.visibility ?? 0.0,
      solarradiation: model.solarradiation ?? 0.0,
      solarenergy: model.solarenergy ?? 0.0,
      uvindex: model.uvindex ?? 0.0,
      severerisk: model.severerisk ?? 0.0,
      sunrise: model.sunrise ?? '',
      sunriseEpoch: model.sunriseEpoch ?? 0,
      sunset: model.sunset ?? '',
      sunsetEpoch: model.sunsetEpoch ?? 0,
      moonphase: model.moonphase ?? 0.0,
      conditions: model.conditions ?? '',
      description: model.description ?? '',
      icon: model.icon ?? '',
      stations: model.stations ?? [],
      source: model.source ?? '',
      hours: (model.hours ?? []).map(_hourAdapter.toEntity).toList(),
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
