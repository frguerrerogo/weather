import 'package:weather/domain/weather/core/entities/index.dart' show Hour;

class Day {
  final String datetime;
  final int datetimeEpoch;
  final double tempmax;
  final double tempmin;
  final double temp;
  final double feelslikemax;
  final double feelslikemin;
  final double feelslike;
  final double dew;
  final double humidity;
  final double precip;
  final double precipprob;
  final double precipcover;
  final List<String> preciptype;
  final double snow;
  final double snowdepth;
  final double windgust;
  final double windspeed;
  final double winddir;
  final double pressure;
  final double cloudcover;
  final double visibility;
  final double solarradiation;
  final double solarenergy;
  final double uvindex;
  final double severerisk;
  final String sunrise;
  final int sunriseEpoch;
  final String sunset;
  final int sunsetEpoch;
  final double moonphase;
  final String conditions;
  final String description;
  final String icon;
  final List<String> stations;
  final String source;
  final List<Hour> hours;

  Day({
    required this.datetime,
    required this.datetimeEpoch,
    required this.tempmax,
    required this.tempmin,
    required this.temp,
    required this.feelslikemax,
    required this.feelslikemin,
    required this.feelslike,
    required this.dew,
    required this.humidity,
    required this.precip,
    required this.precipprob,
    required this.precipcover,
    required this.preciptype,
    required this.snow,
    required this.snowdepth,
    required this.windgust,
    required this.windspeed,
    required this.winddir,
    required this.pressure,
    required this.cloudcover,
    required this.visibility,
    required this.solarradiation,
    required this.solarenergy,
    required this.uvindex,
    required this.severerisk,
    required this.sunrise,
    required this.sunriseEpoch,
    required this.sunset,
    required this.sunsetEpoch,
    required this.moonphase,
    required this.conditions,
    required this.description,
    required this.icon,
    required this.stations,
    required this.source,
    required this.hours,
  });
}
