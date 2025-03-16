import 'package:realm/realm.dart';

part 'weather_realms.realm.dart';

@RealmModel()
class _CurrentConditionsRealm {
  late String datetime;
  late int datetimeEpoch;
  late double temp;
  late double feelslike;
  late double humidity;
  late double dew;
  late double precip;
  late double precipprob;
  late double snow;
  late double snowdepth;
  late List<String> preciptype = [];
  late double windgust;
  late double windspeed;
  late double winddir;
  late double pressure;
  late double visibility;
  late double cloudcover;
  late double solarradiation;
  late double solarenergy;
  late double uvindex;
  late String conditions;
  late String icon;
  late List<String> stations = [];
  late String source;
  late String sunrise;
  late int sunriseEpoch;
  late String sunset;
  late int sunsetEpoch;
  late double moonphase;
}

@RealmModel()
class _DayRealm {
  late String datetime;
  late int datetimeEpoch;
  late double tempmax;
  late double tempmin;
  late double temp;
  late double feelslikemax;
  late double feelslikemin;
  late double feelslike;
  late double dew;
  late double humidity;
  late double precip;
  late double precipprob;
  late double precipcover;
  late List<String> preciptype = [];
  late double snow;
  late double snowdepth;
  late double windgust;
  late double windspeed;
  late double winddir;
  late double pressure;
  late double cloudcover;
  late double visibility;
  late double solarradiation;
  late double solarenergy;
  late double uvindex;
  late double severerisk;
  late String sunrise;
  late int sunriseEpoch;
  late String sunset;
  late int sunsetEpoch;
  late double moonphase;
  late String conditions;
  late String description;
  late String icon;
  late List<String> stations = [];
  late String source;
  late List<_HourRealm> hours = [];
}

@RealmModel()
class _HourRealm {
  late String datetime;
  late int datetimeEpoch;
  late double temp;
  late double feelslike;
  late double humidity;
  late double dew;
  late double precip;
  late double precipprob;
  late double snow;
  late double snowdepth;
  late List<String> preciptype = [];
  late double windgust;
  late double windspeed;
  late double winddir;
  late double pressure;
  late double visibility;
  late double cloudcover;
  late double solarradiation;
  late double solarenergy;
  late double uvindex;
  late double severerisk;
  late String conditions;
  late String icon;
  late List<String> stations = [];
  late String source;
}

@RealmModel()
class _StationRealm {
  late double distance;
  late double latitude;
  late double longitude;
  late int useCount;
  late String id;
  late String name;
  late int quality;
  late double contribution;
}

@RealmModel()
class _WeatherRealm {
  @PrimaryKey()
  late String id;
  late double queryCost;
  late double latitude;
  late double longitude;
  late String resolvedAddress;
  late String address;
  late String timezone;
  late double tzoffset;
  late String description;
  late List<_DayRealm> days = [];
  late List<String> alerts = [];
  late List<_StationRealm> stations = [];
  _CurrentConditionsRealm? currentConditions;
}

@RealmModel()
class _StationEntry {
  late String key;
  _StationRealm? value;
}
