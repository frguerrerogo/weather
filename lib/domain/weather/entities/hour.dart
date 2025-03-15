class Hour {
  final String datetime;
  final int datetimeEpoch;
  final double temp;
  final double feelslike;
  final double humidity;
  final double dew;
  final double precip;
  final double precipprob;
  final double snow;
  final double snowdepth;
  final List<String>? preciptype;
  final double windgust;
  final double windspeed;
  final double winddir;
  final double pressure;
  final double visibility;
  final double cloudcover;
  final double solarradiation;
  final double solarenergy;
  final double uvindex;
  final double severerisk;
  final String conditions;
  final String icon;
  final List<String>? stations;
  final String source;

  Hour({
    required this.datetime,
    required this.datetimeEpoch,
    required this.temp,
    required this.feelslike,
    required this.humidity,
    required this.dew,
    required this.precip,
    required this.precipprob,
    required this.snow,
    required this.snowdepth,
    this.preciptype,
    required this.windgust,
    required this.windspeed,
    required this.winddir,
    required this.pressure,
    required this.visibility,
    required this.cloudcover,
    required this.solarradiation,
    required this.solarenergy,
    required this.uvindex,
    required this.severerisk,
    required this.conditions,
    required this.icon,
    this.stations,
    required this.source,
  });
}
