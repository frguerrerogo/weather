import 'package:json_annotation/json_annotation.dart';
import 'package:weather/data/core/models/index.dart' show CurrentConditionsModel, DayModel, StationModel;

part 'weather_model.g.dart';

@JsonSerializable()
class WeatherModel {
  final double queryCost;
  final double latitude;
  final double longitude;
  final String resolvedAddress;
  final String address;
  final String timezone;
  final double tzoffset;
  final String description;
  final List<DayModel> days;
  final List<dynamic> alerts;
  final Map<String, StationModel> stations;
  final CurrentConditionsModel currentConditions;

  WeatherModel({
    required this.queryCost,
    required this.latitude,
    required this.longitude,
    required this.resolvedAddress,
    required this.address,
    required this.timezone,
    required this.tzoffset,
    required this.description,
    required this.days,
    required this.alerts,
    required this.stations,
    required this.currentConditions,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) => _$WeatherModelFromJson(json);
  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);
}
