import 'package:json_annotation/json_annotation.dart';

part 'station_model.g.dart';

@JsonSerializable()
class StationModel {
  final double distance;
  final double latitude;
  final double longitude;
  final int useCount;
  final String id;
  final String name;
  final int quality;
  final double contribution;

  StationModel({
    required this.distance,
    required this.latitude,
    required this.longitude,
    required this.useCount,
    required this.id,
    required this.name,
    required this.quality,
    required this.contribution,
  });

  factory StationModel.fromJson(Map<String, dynamic> json) => _$StationModelFromJson(json);
  Map<String, dynamic> toJson() => _$StationModelToJson(this);
}
