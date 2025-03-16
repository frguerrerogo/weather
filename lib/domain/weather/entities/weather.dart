import 'package:weather/domain/core/entities/index.dart' show CurrentConditions, Day, Station;

class Weather {
  final double queryCost;
  final double latitude;
  final double longitude;
  final String resolvedAddress;
  final String address;
  final String timezone;
  final double tzoffset;
  final String description;
  final List<Day> days;
  final List<dynamic> alerts;
  final Map<String, Station> stations;
  final CurrentConditions? currentConditions;

  Weather({
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
}
