// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_conditions_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CurrentConditionsModel _$CurrentConditionsModelFromJson(
        Map<String, dynamic> json) =>
    CurrentConditionsModel(
      datetime: json['datetime'] as String?,
      datetimeEpoch: (json['datetimeEpoch'] as num?)?.toInt(),
      temp: (json['temp'] as num?)?.toDouble(),
      feelslike: (json['feelslike'] as num?)?.toDouble(),
      humidity: (json['humidity'] as num?)?.toDouble(),
      dew: (json['dew'] as num?)?.toDouble(),
      precip: (json['precip'] as num?)?.toDouble(),
      precipprob: (json['precipprob'] as num?)?.toDouble(),
      snow: (json['snow'] as num?)?.toDouble(),
      snowdepth: (json['snowdepth'] as num?)?.toDouble(),
      preciptype: (json['preciptype'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      windgust: (json['windgust'] as num?)?.toDouble(),
      windspeed: (json['windspeed'] as num?)?.toDouble(),
      winddir: (json['winddir'] as num?)?.toDouble(),
      pressure: (json['pressure'] as num?)?.toDouble(),
      visibility: (json['visibility'] as num?)?.toDouble(),
      cloudcover: (json['cloudcover'] as num?)?.toDouble(),
      solarradiation: (json['solarradiation'] as num?)?.toDouble(),
      solarenergy: (json['solarenergy'] as num?)?.toDouble(),
      uvindex: (json['uvindex'] as num?)?.toDouble(),
      conditions: json['conditions'] as String?,
      icon: json['icon'] as String?,
      stations: (json['stations'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      source: json['source'] as String?,
      sunrise: json['sunrise'] as String?,
      sunriseEpoch: (json['sunriseEpoch'] as num?)?.toInt(),
      sunset: json['sunset'] as String?,
      sunsetEpoch: (json['sunsetEpoch'] as num?)?.toInt(),
      moonphase: (json['moonphase'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CurrentConditionsModelToJson(
        CurrentConditionsModel instance) =>
    <String, dynamic>{
      'datetime': instance.datetime,
      'datetimeEpoch': instance.datetimeEpoch,
      'temp': instance.temp,
      'feelslike': instance.feelslike,
      'humidity': instance.humidity,
      'dew': instance.dew,
      'precip': instance.precip,
      'precipprob': instance.precipprob,
      'snow': instance.snow,
      'snowdepth': instance.snowdepth,
      'preciptype': instance.preciptype,
      'windgust': instance.windgust,
      'windspeed': instance.windspeed,
      'winddir': instance.winddir,
      'pressure': instance.pressure,
      'visibility': instance.visibility,
      'cloudcover': instance.cloudcover,
      'solarradiation': instance.solarradiation,
      'solarenergy': instance.solarenergy,
      'uvindex': instance.uvindex,
      'conditions': instance.conditions,
      'icon': instance.icon,
      'stations': instance.stations,
      'source': instance.source,
      'sunrise': instance.sunrise,
      'sunriseEpoch': instance.sunriseEpoch,
      'sunset': instance.sunset,
      'sunsetEpoch': instance.sunsetEpoch,
      'moonphase': instance.moonphase,
    };
