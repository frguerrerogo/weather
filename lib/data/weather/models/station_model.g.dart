// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'station_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StationModel _$StationModelFromJson(Map<String, dynamic> json) => StationModel(
      distance: (json['distance'] as num).toDouble(),
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      useCount: (json['useCount'] as num).toInt(),
      id: json['id'] as String,
      name: json['name'] as String,
      quality: (json['quality'] as num).toInt(),
      contribution: (json['contribution'] as num).toDouble(),
    );

Map<String, dynamic> _$StationModelToJson(StationModel instance) =>
    <String, dynamic>{
      'distance': instance.distance,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'useCount': instance.useCount,
      'id': instance.id,
      'name': instance.name,
      'quality': instance.quality,
      'contribution': instance.contribution,
    };
