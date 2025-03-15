// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'day_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DayModel _$DayModelFromJson(Map<String, dynamic> json) => DayModel(
      datetime: json['datetime'] as String,
      datetimeEpoch: (json['datetimeEpoch'] as num).toInt(),
      tempmax: (json['tempmax'] as num).toDouble(),
      tempmin: (json['tempmin'] as num).toDouble(),
      temp: (json['temp'] as num).toDouble(),
      feelslikemax: (json['feelslikemax'] as num).toDouble(),
      feelslikemin: (json['feelslikemin'] as num).toDouble(),
      feelslike: (json['feelslike'] as num).toDouble(),
      dew: (json['dew'] as num).toDouble(),
      humidity: (json['humidity'] as num).toDouble(),
      precip: (json['precip'] as num).toDouble(),
      precipprob: (json['precipprob'] as num).toDouble(),
      precipcover: (json['precipcover'] as num).toDouble(),
      preciptype: (json['preciptype'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      snow: (json['snow'] as num).toDouble(),
      snowdepth: (json['snowdepth'] as num).toDouble(),
      windgust: (json['windgust'] as num).toDouble(),
      windspeed: (json['windspeed'] as num).toDouble(),
      winddir: (json['winddir'] as num).toDouble(),
      pressure: (json['pressure'] as num).toDouble(),
      cloudcover: (json['cloudcover'] as num).toDouble(),
      visibility: (json['visibility'] as num).toDouble(),
      solarradiation: (json['solarradiation'] as num).toDouble(),
      solarenergy: (json['solarenergy'] as num).toDouble(),
      uvindex: (json['uvindex'] as num).toDouble(),
      severerisk: (json['severerisk'] as num).toDouble(),
      sunrise: json['sunrise'] as String,
      sunriseEpoch: (json['sunriseEpoch'] as num).toInt(),
      sunset: json['sunset'] as String,
      sunsetEpoch: (json['sunsetEpoch'] as num).toInt(),
      moonphase: (json['moonphase'] as num).toDouble(),
      conditions: json['conditions'] as String,
      description: json['description'] as String,
      icon: json['icon'] as String,
      stations:
          (json['stations'] as List<dynamic>).map((e) => e as String).toList(),
      source: json['source'] as String,
      hours: (json['hours'] as List<dynamic>)
          .map((e) => HourModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$DayModelToJson(DayModel instance) => <String, dynamic>{
      'datetime': instance.datetime,
      'datetimeEpoch': instance.datetimeEpoch,
      'tempmax': instance.tempmax,
      'tempmin': instance.tempmin,
      'temp': instance.temp,
      'feelslikemax': instance.feelslikemax,
      'feelslikemin': instance.feelslikemin,
      'feelslike': instance.feelslike,
      'dew': instance.dew,
      'humidity': instance.humidity,
      'precip': instance.precip,
      'precipprob': instance.precipprob,
      'precipcover': instance.precipcover,
      'preciptype': instance.preciptype,
      'snow': instance.snow,
      'snowdepth': instance.snowdepth,
      'windgust': instance.windgust,
      'windspeed': instance.windspeed,
      'winddir': instance.winddir,
      'pressure': instance.pressure,
      'cloudcover': instance.cloudcover,
      'visibility': instance.visibility,
      'solarradiation': instance.solarradiation,
      'solarenergy': instance.solarenergy,
      'uvindex': instance.uvindex,
      'severerisk': instance.severerisk,
      'sunrise': instance.sunrise,
      'sunriseEpoch': instance.sunriseEpoch,
      'sunset': instance.sunset,
      'sunsetEpoch': instance.sunsetEpoch,
      'moonphase': instance.moonphase,
      'conditions': instance.conditions,
      'description': instance.description,
      'icon': instance.icon,
      'stations': instance.stations,
      'source': instance.source,
      'hours': instance.hours,
    };
