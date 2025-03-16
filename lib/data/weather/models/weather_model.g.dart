// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) => WeatherModel(
      queryCost: (json['queryCost'] as num?)?.toDouble(),
      latitude: (json['latitude'] as num?)?.toDouble(),
      longitude: (json['longitude'] as num?)?.toDouble(),
      resolvedAddress: json['resolvedAddress'] as String?,
      address: json['address'] as String?,
      timezone: json['timezone'] as String?,
      tzoffset: (json['tzoffset'] as num?)?.toDouble(),
      description: json['description'] as String?,
      days: (json['days'] as List<dynamic>?)
          ?.map((e) => DayModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      alerts: json['alerts'] as List<dynamic>?,
      stations: (json['stations'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, StationModel.fromJson(e as Map<String, dynamic>)),
      ),
      currentConditions: json['currentConditions'] == null
          ? null
          : CurrentConditionsModel.fromJson(
              json['currentConditions'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$WeatherModelToJson(WeatherModel instance) =>
    <String, dynamic>{
      'queryCost': instance.queryCost,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'resolvedAddress': instance.resolvedAddress,
      'address': instance.address,
      'timezone': instance.timezone,
      'tzoffset': instance.tzoffset,
      'description': instance.description,
      'days': instance.days,
      'alerts': instance.alerts,
      'stations': instance.stations,
      'currentConditions': instance.currentConditions,
    };
