class CurrentConditions {
  final String datetime;
  final int datetimeEpoch;
  final double temp;
  final double feelslike;
  final double humidity;
  final double dew;
  final double? precip;
  final double precipprob;
  final double snow;
  final double snowdepth;
  final List<String>? preciptype;
  final double? windgust;
  final double windspeed;
  final double winddir;
  final double pressure;
  final double visibility;
  final double cloudcover;
  final double solarradiation;
  final double solarenergy;
  final double uvindex;
  final String conditions;
  final String icon;
  final List<String> stations;
  final String source;
  final String sunrise;
  final int sunriseEpoch;
  final String sunset;
  final int sunsetEpoch;
  final double moonphase;

  CurrentConditions({
    required this.datetime,
    required this.datetimeEpoch,
    required this.temp,
    required this.feelslike,
    required this.humidity,
    required this.dew,
    this.precip,
    required this.precipprob,
    required this.snow,
    required this.snowdepth,
    this.preciptype,
    this.windgust,
    required this.windspeed,
    required this.winddir,
    required this.pressure,
    required this.visibility,
    required this.cloudcover,
    required this.solarradiation,
    required this.solarenergy,
    required this.uvindex,
    required this.conditions,
    required this.icon,
    required this.stations,
    required this.source,
    required this.sunrise,
    required this.sunriseEpoch,
    required this.sunset,
    required this.sunsetEpoch,
    required this.moonphase,
  });
}
