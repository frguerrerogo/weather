import 'package:json_annotation/json_annotation.dart';
import 'package:weather/data/core/models/index.dart' show CurrentConditionsModel, DayModel, StationModel;

part 'weather_model.g.dart';

@JsonSerializable()
class WeatherModel {
  final double? queryCost;
  final double? latitude;
  final double? longitude;
  final String? resolvedAddress;
  final String? address;
  final String? timezone;
  final double? tzoffset;
  final String? description;
  final List<DayModel>? days;
  final List<dynamic>? alerts;
  final Map<String, StationModel>? stations;
  final CurrentConditionsModel? currentConditions;

  WeatherModel({
    this.queryCost,
    this.latitude,
    this.longitude,
    this.resolvedAddress,
    this.address,
    this.timezone,
    this.tzoffset,
    this.description,
    this.days,
    this.alerts,
    this.stations,
    this.currentConditions,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) => _$WeatherModelFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
}
