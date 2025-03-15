class Station {
  final double distance;
  final double latitude;
  final double longitude;
  final int useCount;
  final String id;
  final String name;
  final int quality;
  final double contribution;

  Station({
    required this.distance,
    required this.latitude,
    required this.longitude,
    required this.useCount,
    required this.id,
    required this.name,
    required this.quality,
    required this.contribution,
  });
}
