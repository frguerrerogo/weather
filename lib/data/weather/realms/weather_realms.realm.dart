// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_realms.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class CurrentConditionsRealm extends _CurrentConditionsRealm
    with RealmEntity, RealmObjectBase, RealmObject {
  CurrentConditionsRealm(
    String datetime,
    int datetimeEpoch,
    double temp,
    double feelslike,
    double humidity,
    double dew,
    double precip,
    double precipprob,
    double snow,
    double snowdepth,
    double windgust,
    double windspeed,
    double winddir,
    double pressure,
    double visibility,
    double cloudcover,
    double solarradiation,
    double solarenergy,
    double uvindex,
    String conditions,
    String icon,
    String source,
    String sunrise,
    int sunriseEpoch,
    String sunset,
    int sunsetEpoch,
    double moonphase, {
    Iterable<String> preciptype = const [],
    Iterable<String> stations = const [],
  }) {
    RealmObjectBase.set(this, 'datetime', datetime);
    RealmObjectBase.set(this, 'datetimeEpoch', datetimeEpoch);
    RealmObjectBase.set(this, 'temp', temp);
    RealmObjectBase.set(this, 'feelslike', feelslike);
    RealmObjectBase.set(this, 'humidity', humidity);
    RealmObjectBase.set(this, 'dew', dew);
    RealmObjectBase.set(this, 'precip', precip);
    RealmObjectBase.set(this, 'precipprob', precipprob);
    RealmObjectBase.set(this, 'snow', snow);
    RealmObjectBase.set(this, 'snowdepth', snowdepth);
    RealmObjectBase.set<RealmList<String>>(
        this, 'preciptype', RealmList<String>(preciptype));
    RealmObjectBase.set(this, 'windgust', windgust);
    RealmObjectBase.set(this, 'windspeed', windspeed);
    RealmObjectBase.set(this, 'winddir', winddir);
    RealmObjectBase.set(this, 'pressure', pressure);
    RealmObjectBase.set(this, 'visibility', visibility);
    RealmObjectBase.set(this, 'cloudcover', cloudcover);
    RealmObjectBase.set(this, 'solarradiation', solarradiation);
    RealmObjectBase.set(this, 'solarenergy', solarenergy);
    RealmObjectBase.set(this, 'uvindex', uvindex);
    RealmObjectBase.set(this, 'conditions', conditions);
    RealmObjectBase.set(this, 'icon', icon);
    RealmObjectBase.set<RealmList<String>>(
        this, 'stations', RealmList<String>(stations));
    RealmObjectBase.set(this, 'source', source);
    RealmObjectBase.set(this, 'sunrise', sunrise);
    RealmObjectBase.set(this, 'sunriseEpoch', sunriseEpoch);
    RealmObjectBase.set(this, 'sunset', sunset);
    RealmObjectBase.set(this, 'sunsetEpoch', sunsetEpoch);
    RealmObjectBase.set(this, 'moonphase', moonphase);
  }

  CurrentConditionsRealm._();

  @override
  String get datetime =>
      RealmObjectBase.get<String>(this, 'datetime') as String;
  @override
  set datetime(String value) => RealmObjectBase.set(this, 'datetime', value);

  @override
  int get datetimeEpoch =>
      RealmObjectBase.get<int>(this, 'datetimeEpoch') as int;
  @override
  set datetimeEpoch(int value) =>
      RealmObjectBase.set(this, 'datetimeEpoch', value);

  @override
  double get temp => RealmObjectBase.get<double>(this, 'temp') as double;
  @override
  set temp(double value) => RealmObjectBase.set(this, 'temp', value);

  @override
  double get feelslike =>
      RealmObjectBase.get<double>(this, 'feelslike') as double;
  @override
  set feelslike(double value) => RealmObjectBase.set(this, 'feelslike', value);

  @override
  double get humidity =>
      RealmObjectBase.get<double>(this, 'humidity') as double;
  @override
  set humidity(double value) => RealmObjectBase.set(this, 'humidity', value);

  @override
  double get dew => RealmObjectBase.get<double>(this, 'dew') as double;
  @override
  set dew(double value) => RealmObjectBase.set(this, 'dew', value);

  @override
  double get precip => RealmObjectBase.get<double>(this, 'precip') as double;
  @override
  set precip(double value) => RealmObjectBase.set(this, 'precip', value);

  @override
  double get precipprob =>
      RealmObjectBase.get<double>(this, 'precipprob') as double;
  @override
  set precipprob(double value) =>
      RealmObjectBase.set(this, 'precipprob', value);

  @override
  double get snow => RealmObjectBase.get<double>(this, 'snow') as double;
  @override
  set snow(double value) => RealmObjectBase.set(this, 'snow', value);

  @override
  double get snowdepth =>
      RealmObjectBase.get<double>(this, 'snowdepth') as double;
  @override
  set snowdepth(double value) => RealmObjectBase.set(this, 'snowdepth', value);

  @override
  RealmList<String> get preciptype =>
      RealmObjectBase.get<String>(this, 'preciptype') as RealmList<String>;
  @override
  set preciptype(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  double get windgust =>
      RealmObjectBase.get<double>(this, 'windgust') as double;
  @override
  set windgust(double value) => RealmObjectBase.set(this, 'windgust', value);

  @override
  double get windspeed =>
      RealmObjectBase.get<double>(this, 'windspeed') as double;
  @override
  set windspeed(double value) => RealmObjectBase.set(this, 'windspeed', value);

  @override
  double get winddir => RealmObjectBase.get<double>(this, 'winddir') as double;
  @override
  set winddir(double value) => RealmObjectBase.set(this, 'winddir', value);

  @override
  double get pressure =>
      RealmObjectBase.get<double>(this, 'pressure') as double;
  @override
  set pressure(double value) => RealmObjectBase.set(this, 'pressure', value);

  @override
  double get visibility =>
      RealmObjectBase.get<double>(this, 'visibility') as double;
  @override
  set visibility(double value) =>
      RealmObjectBase.set(this, 'visibility', value);

  @override
  double get cloudcover =>
      RealmObjectBase.get<double>(this, 'cloudcover') as double;
  @override
  set cloudcover(double value) =>
      RealmObjectBase.set(this, 'cloudcover', value);

  @override
  double get solarradiation =>
      RealmObjectBase.get<double>(this, 'solarradiation') as double;
  @override
  set solarradiation(double value) =>
      RealmObjectBase.set(this, 'solarradiation', value);

  @override
  double get solarenergy =>
      RealmObjectBase.get<double>(this, 'solarenergy') as double;
  @override
  set solarenergy(double value) =>
      RealmObjectBase.set(this, 'solarenergy', value);

  @override
  double get uvindex => RealmObjectBase.get<double>(this, 'uvindex') as double;
  @override
  set uvindex(double value) => RealmObjectBase.set(this, 'uvindex', value);

  @override
  String get conditions =>
      RealmObjectBase.get<String>(this, 'conditions') as String;
  @override
  set conditions(String value) =>
      RealmObjectBase.set(this, 'conditions', value);

  @override
  String get icon => RealmObjectBase.get<String>(this, 'icon') as String;
  @override
  set icon(String value) => RealmObjectBase.set(this, 'icon', value);

  @override
  RealmList<String> get stations =>
      RealmObjectBase.get<String>(this, 'stations') as RealmList<String>;
  @override
  set stations(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  String get source => RealmObjectBase.get<String>(this, 'source') as String;
  @override
  set source(String value) => RealmObjectBase.set(this, 'source', value);

  @override
  String get sunrise => RealmObjectBase.get<String>(this, 'sunrise') as String;
  @override
  set sunrise(String value) => RealmObjectBase.set(this, 'sunrise', value);

  @override
  int get sunriseEpoch => RealmObjectBase.get<int>(this, 'sunriseEpoch') as int;
  @override
  set sunriseEpoch(int value) =>
      RealmObjectBase.set(this, 'sunriseEpoch', value);

  @override
  String get sunset => RealmObjectBase.get<String>(this, 'sunset') as String;
  @override
  set sunset(String value) => RealmObjectBase.set(this, 'sunset', value);

  @override
  int get sunsetEpoch => RealmObjectBase.get<int>(this, 'sunsetEpoch') as int;
  @override
  set sunsetEpoch(int value) => RealmObjectBase.set(this, 'sunsetEpoch', value);

  @override
  double get moonphase =>
      RealmObjectBase.get<double>(this, 'moonphase') as double;
  @override
  set moonphase(double value) => RealmObjectBase.set(this, 'moonphase', value);

  @override
  Stream<RealmObjectChanges<CurrentConditionsRealm>> get changes =>
      RealmObjectBase.getChanges<CurrentConditionsRealm>(this);

  @override
  Stream<RealmObjectChanges<CurrentConditionsRealm>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<CurrentConditionsRealm>(this, keyPaths);

  @override
  CurrentConditionsRealm freeze() =>
      RealmObjectBase.freezeObject<CurrentConditionsRealm>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'datetime': datetime.toEJson(),
      'datetimeEpoch': datetimeEpoch.toEJson(),
      'temp': temp.toEJson(),
      'feelslike': feelslike.toEJson(),
      'humidity': humidity.toEJson(),
      'dew': dew.toEJson(),
      'precip': precip.toEJson(),
      'precipprob': precipprob.toEJson(),
      'snow': snow.toEJson(),
      'snowdepth': snowdepth.toEJson(),
      'preciptype': preciptype.toEJson(),
      'windgust': windgust.toEJson(),
      'windspeed': windspeed.toEJson(),
      'winddir': winddir.toEJson(),
      'pressure': pressure.toEJson(),
      'visibility': visibility.toEJson(),
      'cloudcover': cloudcover.toEJson(),
      'solarradiation': solarradiation.toEJson(),
      'solarenergy': solarenergy.toEJson(),
      'uvindex': uvindex.toEJson(),
      'conditions': conditions.toEJson(),
      'icon': icon.toEJson(),
      'stations': stations.toEJson(),
      'source': source.toEJson(),
      'sunrise': sunrise.toEJson(),
      'sunriseEpoch': sunriseEpoch.toEJson(),
      'sunset': sunset.toEJson(),
      'sunsetEpoch': sunsetEpoch.toEJson(),
      'moonphase': moonphase.toEJson(),
    };
  }

  static EJsonValue _toEJson(CurrentConditionsRealm value) => value.toEJson();
  static CurrentConditionsRealm _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'datetime': EJsonValue datetime,
        'datetimeEpoch': EJsonValue datetimeEpoch,
        'temp': EJsonValue temp,
        'feelslike': EJsonValue feelslike,
        'humidity': EJsonValue humidity,
        'dew': EJsonValue dew,
        'precip': EJsonValue precip,
        'precipprob': EJsonValue precipprob,
        'snow': EJsonValue snow,
        'snowdepth': EJsonValue snowdepth,
        'windgust': EJsonValue windgust,
        'windspeed': EJsonValue windspeed,
        'winddir': EJsonValue winddir,
        'pressure': EJsonValue pressure,
        'visibility': EJsonValue visibility,
        'cloudcover': EJsonValue cloudcover,
        'solarradiation': EJsonValue solarradiation,
        'solarenergy': EJsonValue solarenergy,
        'uvindex': EJsonValue uvindex,
        'conditions': EJsonValue conditions,
        'icon': EJsonValue icon,
        'source': EJsonValue source,
        'sunrise': EJsonValue sunrise,
        'sunriseEpoch': EJsonValue sunriseEpoch,
        'sunset': EJsonValue sunset,
        'sunsetEpoch': EJsonValue sunsetEpoch,
        'moonphase': EJsonValue moonphase,
      } =>
        CurrentConditionsRealm(
          fromEJson(datetime),
          fromEJson(datetimeEpoch),
          fromEJson(temp),
          fromEJson(feelslike),
          fromEJson(humidity),
          fromEJson(dew),
          fromEJson(precip),
          fromEJson(precipprob),
          fromEJson(snow),
          fromEJson(snowdepth),
          fromEJson(windgust),
          fromEJson(windspeed),
          fromEJson(winddir),
          fromEJson(pressure),
          fromEJson(visibility),
          fromEJson(cloudcover),
          fromEJson(solarradiation),
          fromEJson(solarenergy),
          fromEJson(uvindex),
          fromEJson(conditions),
          fromEJson(icon),
          fromEJson(source),
          fromEJson(sunrise),
          fromEJson(sunriseEpoch),
          fromEJson(sunset),
          fromEJson(sunsetEpoch),
          fromEJson(moonphase),
          preciptype: fromEJson(ejson['preciptype'], defaultValue: const []),
          stations: fromEJson(ejson['stations'], defaultValue: const []),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(CurrentConditionsRealm._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, CurrentConditionsRealm,
        'CurrentConditionsRealm', [
      SchemaProperty('datetime', RealmPropertyType.string),
      SchemaProperty('datetimeEpoch', RealmPropertyType.int),
      SchemaProperty('temp', RealmPropertyType.double),
      SchemaProperty('feelslike', RealmPropertyType.double),
      SchemaProperty('humidity', RealmPropertyType.double),
      SchemaProperty('dew', RealmPropertyType.double),
      SchemaProperty('precip', RealmPropertyType.double),
      SchemaProperty('precipprob', RealmPropertyType.double),
      SchemaProperty('snow', RealmPropertyType.double),
      SchemaProperty('snowdepth', RealmPropertyType.double),
      SchemaProperty('preciptype', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('windgust', RealmPropertyType.double),
      SchemaProperty('windspeed', RealmPropertyType.double),
      SchemaProperty('winddir', RealmPropertyType.double),
      SchemaProperty('pressure', RealmPropertyType.double),
      SchemaProperty('visibility', RealmPropertyType.double),
      SchemaProperty('cloudcover', RealmPropertyType.double),
      SchemaProperty('solarradiation', RealmPropertyType.double),
      SchemaProperty('solarenergy', RealmPropertyType.double),
      SchemaProperty('uvindex', RealmPropertyType.double),
      SchemaProperty('conditions', RealmPropertyType.string),
      SchemaProperty('icon', RealmPropertyType.string),
      SchemaProperty('stations', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('source', RealmPropertyType.string),
      SchemaProperty('sunrise', RealmPropertyType.string),
      SchemaProperty('sunriseEpoch', RealmPropertyType.int),
      SchemaProperty('sunset', RealmPropertyType.string),
      SchemaProperty('sunsetEpoch', RealmPropertyType.int),
      SchemaProperty('moonphase', RealmPropertyType.double),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class DayRealm extends _DayRealm
    with RealmEntity, RealmObjectBase, RealmObject {
  DayRealm(
    String datetime,
    int datetimeEpoch,
    double tempmax,
    double tempmin,
    double temp,
    double feelslikemax,
    double feelslikemin,
    double feelslike,
    double dew,
    double humidity,
    double precip,
    double precipprob,
    double precipcover,
    double snow,
    double snowdepth,
    double windgust,
    double windspeed,
    double winddir,
    double pressure,
    double cloudcover,
    double visibility,
    double solarradiation,
    double solarenergy,
    double uvindex,
    double severerisk,
    String sunrise,
    int sunriseEpoch,
    String sunset,
    int sunsetEpoch,
    double moonphase,
    String conditions,
    String description,
    String icon,
    String source, {
    Iterable<String> preciptype = const [],
    Iterable<String> stations = const [],
    Iterable<HourRealm> hours = const [],
  }) {
    RealmObjectBase.set(this, 'datetime', datetime);
    RealmObjectBase.set(this, 'datetimeEpoch', datetimeEpoch);
    RealmObjectBase.set(this, 'tempmax', tempmax);
    RealmObjectBase.set(this, 'tempmin', tempmin);
    RealmObjectBase.set(this, 'temp', temp);
    RealmObjectBase.set(this, 'feelslikemax', feelslikemax);
    RealmObjectBase.set(this, 'feelslikemin', feelslikemin);
    RealmObjectBase.set(this, 'feelslike', feelslike);
    RealmObjectBase.set(this, 'dew', dew);
    RealmObjectBase.set(this, 'humidity', humidity);
    RealmObjectBase.set(this, 'precip', precip);
    RealmObjectBase.set(this, 'precipprob', precipprob);
    RealmObjectBase.set(this, 'precipcover', precipcover);
    RealmObjectBase.set<RealmList<String>>(
        this, 'preciptype', RealmList<String>(preciptype));
    RealmObjectBase.set(this, 'snow', snow);
    RealmObjectBase.set(this, 'snowdepth', snowdepth);
    RealmObjectBase.set(this, 'windgust', windgust);
    RealmObjectBase.set(this, 'windspeed', windspeed);
    RealmObjectBase.set(this, 'winddir', winddir);
    RealmObjectBase.set(this, 'pressure', pressure);
    RealmObjectBase.set(this, 'cloudcover', cloudcover);
    RealmObjectBase.set(this, 'visibility', visibility);
    RealmObjectBase.set(this, 'solarradiation', solarradiation);
    RealmObjectBase.set(this, 'solarenergy', solarenergy);
    RealmObjectBase.set(this, 'uvindex', uvindex);
    RealmObjectBase.set(this, 'severerisk', severerisk);
    RealmObjectBase.set(this, 'sunrise', sunrise);
    RealmObjectBase.set(this, 'sunriseEpoch', sunriseEpoch);
    RealmObjectBase.set(this, 'sunset', sunset);
    RealmObjectBase.set(this, 'sunsetEpoch', sunsetEpoch);
    RealmObjectBase.set(this, 'moonphase', moonphase);
    RealmObjectBase.set(this, 'conditions', conditions);
    RealmObjectBase.set(this, 'description', description);
    RealmObjectBase.set(this, 'icon', icon);
    RealmObjectBase.set<RealmList<String>>(
        this, 'stations', RealmList<String>(stations));
    RealmObjectBase.set(this, 'source', source);
    RealmObjectBase.set<RealmList<HourRealm>>(
        this, 'hours', RealmList<HourRealm>(hours));
  }

  DayRealm._();

  @override
  String get datetime =>
      RealmObjectBase.get<String>(this, 'datetime') as String;
  @override
  set datetime(String value) => RealmObjectBase.set(this, 'datetime', value);

  @override
  int get datetimeEpoch =>
      RealmObjectBase.get<int>(this, 'datetimeEpoch') as int;
  @override
  set datetimeEpoch(int value) =>
      RealmObjectBase.set(this, 'datetimeEpoch', value);

  @override
  double get tempmax => RealmObjectBase.get<double>(this, 'tempmax') as double;
  @override
  set tempmax(double value) => RealmObjectBase.set(this, 'tempmax', value);

  @override
  double get tempmin => RealmObjectBase.get<double>(this, 'tempmin') as double;
  @override
  set tempmin(double value) => RealmObjectBase.set(this, 'tempmin', value);

  @override
  double get temp => RealmObjectBase.get<double>(this, 'temp') as double;
  @override
  set temp(double value) => RealmObjectBase.set(this, 'temp', value);

  @override
  double get feelslikemax =>
      RealmObjectBase.get<double>(this, 'feelslikemax') as double;
  @override
  set feelslikemax(double value) =>
      RealmObjectBase.set(this, 'feelslikemax', value);

  @override
  double get feelslikemin =>
      RealmObjectBase.get<double>(this, 'feelslikemin') as double;
  @override
  set feelslikemin(double value) =>
      RealmObjectBase.set(this, 'feelslikemin', value);

  @override
  double get feelslike =>
      RealmObjectBase.get<double>(this, 'feelslike') as double;
  @override
  set feelslike(double value) => RealmObjectBase.set(this, 'feelslike', value);

  @override
  double get dew => RealmObjectBase.get<double>(this, 'dew') as double;
  @override
  set dew(double value) => RealmObjectBase.set(this, 'dew', value);

  @override
  double get humidity =>
      RealmObjectBase.get<double>(this, 'humidity') as double;
  @override
  set humidity(double value) => RealmObjectBase.set(this, 'humidity', value);

  @override
  double get precip => RealmObjectBase.get<double>(this, 'precip') as double;
  @override
  set precip(double value) => RealmObjectBase.set(this, 'precip', value);

  @override
  double get precipprob =>
      RealmObjectBase.get<double>(this, 'precipprob') as double;
  @override
  set precipprob(double value) =>
      RealmObjectBase.set(this, 'precipprob', value);

  @override
  double get precipcover =>
      RealmObjectBase.get<double>(this, 'precipcover') as double;
  @override
  set precipcover(double value) =>
      RealmObjectBase.set(this, 'precipcover', value);

  @override
  RealmList<String> get preciptype =>
      RealmObjectBase.get<String>(this, 'preciptype') as RealmList<String>;
  @override
  set preciptype(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  double get snow => RealmObjectBase.get<double>(this, 'snow') as double;
  @override
  set snow(double value) => RealmObjectBase.set(this, 'snow', value);

  @override
  double get snowdepth =>
      RealmObjectBase.get<double>(this, 'snowdepth') as double;
  @override
  set snowdepth(double value) => RealmObjectBase.set(this, 'snowdepth', value);

  @override
  double get windgust =>
      RealmObjectBase.get<double>(this, 'windgust') as double;
  @override
  set windgust(double value) => RealmObjectBase.set(this, 'windgust', value);

  @override
  double get windspeed =>
      RealmObjectBase.get<double>(this, 'windspeed') as double;
  @override
  set windspeed(double value) => RealmObjectBase.set(this, 'windspeed', value);

  @override
  double get winddir => RealmObjectBase.get<double>(this, 'winddir') as double;
  @override
  set winddir(double value) => RealmObjectBase.set(this, 'winddir', value);

  @override
  double get pressure =>
      RealmObjectBase.get<double>(this, 'pressure') as double;
  @override
  set pressure(double value) => RealmObjectBase.set(this, 'pressure', value);

  @override
  double get cloudcover =>
      RealmObjectBase.get<double>(this, 'cloudcover') as double;
  @override
  set cloudcover(double value) =>
      RealmObjectBase.set(this, 'cloudcover', value);

  @override
  double get visibility =>
      RealmObjectBase.get<double>(this, 'visibility') as double;
  @override
  set visibility(double value) =>
      RealmObjectBase.set(this, 'visibility', value);

  @override
  double get solarradiation =>
      RealmObjectBase.get<double>(this, 'solarradiation') as double;
  @override
  set solarradiation(double value) =>
      RealmObjectBase.set(this, 'solarradiation', value);

  @override
  double get solarenergy =>
      RealmObjectBase.get<double>(this, 'solarenergy') as double;
  @override
  set solarenergy(double value) =>
      RealmObjectBase.set(this, 'solarenergy', value);

  @override
  double get uvindex => RealmObjectBase.get<double>(this, 'uvindex') as double;
  @override
  set uvindex(double value) => RealmObjectBase.set(this, 'uvindex', value);

  @override
  double get severerisk =>
      RealmObjectBase.get<double>(this, 'severerisk') as double;
  @override
  set severerisk(double value) =>
      RealmObjectBase.set(this, 'severerisk', value);

  @override
  String get sunrise => RealmObjectBase.get<String>(this, 'sunrise') as String;
  @override
  set sunrise(String value) => RealmObjectBase.set(this, 'sunrise', value);

  @override
  int get sunriseEpoch => RealmObjectBase.get<int>(this, 'sunriseEpoch') as int;
  @override
  set sunriseEpoch(int value) =>
      RealmObjectBase.set(this, 'sunriseEpoch', value);

  @override
  String get sunset => RealmObjectBase.get<String>(this, 'sunset') as String;
  @override
  set sunset(String value) => RealmObjectBase.set(this, 'sunset', value);

  @override
  int get sunsetEpoch => RealmObjectBase.get<int>(this, 'sunsetEpoch') as int;
  @override
  set sunsetEpoch(int value) => RealmObjectBase.set(this, 'sunsetEpoch', value);

  @override
  double get moonphase =>
      RealmObjectBase.get<double>(this, 'moonphase') as double;
  @override
  set moonphase(double value) => RealmObjectBase.set(this, 'moonphase', value);

  @override
  String get conditions =>
      RealmObjectBase.get<String>(this, 'conditions') as String;
  @override
  set conditions(String value) =>
      RealmObjectBase.set(this, 'conditions', value);

  @override
  String get description =>
      RealmObjectBase.get<String>(this, 'description') as String;
  @override
  set description(String value) =>
      RealmObjectBase.set(this, 'description', value);

  @override
  String get icon => RealmObjectBase.get<String>(this, 'icon') as String;
  @override
  set icon(String value) => RealmObjectBase.set(this, 'icon', value);

  @override
  RealmList<String> get stations =>
      RealmObjectBase.get<String>(this, 'stations') as RealmList<String>;
  @override
  set stations(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  String get source => RealmObjectBase.get<String>(this, 'source') as String;
  @override
  set source(String value) => RealmObjectBase.set(this, 'source', value);

  @override
  RealmList<HourRealm> get hours =>
      RealmObjectBase.get<HourRealm>(this, 'hours') as RealmList<HourRealm>;
  @override
  set hours(covariant RealmList<HourRealm> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<DayRealm>> get changes =>
      RealmObjectBase.getChanges<DayRealm>(this);

  @override
  Stream<RealmObjectChanges<DayRealm>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<DayRealm>(this, keyPaths);

  @override
  DayRealm freeze() => RealmObjectBase.freezeObject<DayRealm>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'datetime': datetime.toEJson(),
      'datetimeEpoch': datetimeEpoch.toEJson(),
      'tempmax': tempmax.toEJson(),
      'tempmin': tempmin.toEJson(),
      'temp': temp.toEJson(),
      'feelslikemax': feelslikemax.toEJson(),
      'feelslikemin': feelslikemin.toEJson(),
      'feelslike': feelslike.toEJson(),
      'dew': dew.toEJson(),
      'humidity': humidity.toEJson(),
      'precip': precip.toEJson(),
      'precipprob': precipprob.toEJson(),
      'precipcover': precipcover.toEJson(),
      'preciptype': preciptype.toEJson(),
      'snow': snow.toEJson(),
      'snowdepth': snowdepth.toEJson(),
      'windgust': windgust.toEJson(),
      'windspeed': windspeed.toEJson(),
      'winddir': winddir.toEJson(),
      'pressure': pressure.toEJson(),
      'cloudcover': cloudcover.toEJson(),
      'visibility': visibility.toEJson(),
      'solarradiation': solarradiation.toEJson(),
      'solarenergy': solarenergy.toEJson(),
      'uvindex': uvindex.toEJson(),
      'severerisk': severerisk.toEJson(),
      'sunrise': sunrise.toEJson(),
      'sunriseEpoch': sunriseEpoch.toEJson(),
      'sunset': sunset.toEJson(),
      'sunsetEpoch': sunsetEpoch.toEJson(),
      'moonphase': moonphase.toEJson(),
      'conditions': conditions.toEJson(),
      'description': description.toEJson(),
      'icon': icon.toEJson(),
      'stations': stations.toEJson(),
      'source': source.toEJson(),
      'hours': hours.toEJson(),
    };
  }

  static EJsonValue _toEJson(DayRealm value) => value.toEJson();
  static DayRealm _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'datetime': EJsonValue datetime,
        'datetimeEpoch': EJsonValue datetimeEpoch,
        'tempmax': EJsonValue tempmax,
        'tempmin': EJsonValue tempmin,
        'temp': EJsonValue temp,
        'feelslikemax': EJsonValue feelslikemax,
        'feelslikemin': EJsonValue feelslikemin,
        'feelslike': EJsonValue feelslike,
        'dew': EJsonValue dew,
        'humidity': EJsonValue humidity,
        'precip': EJsonValue precip,
        'precipprob': EJsonValue precipprob,
        'precipcover': EJsonValue precipcover,
        'snow': EJsonValue snow,
        'snowdepth': EJsonValue snowdepth,
        'windgust': EJsonValue windgust,
        'windspeed': EJsonValue windspeed,
        'winddir': EJsonValue winddir,
        'pressure': EJsonValue pressure,
        'cloudcover': EJsonValue cloudcover,
        'visibility': EJsonValue visibility,
        'solarradiation': EJsonValue solarradiation,
        'solarenergy': EJsonValue solarenergy,
        'uvindex': EJsonValue uvindex,
        'severerisk': EJsonValue severerisk,
        'sunrise': EJsonValue sunrise,
        'sunriseEpoch': EJsonValue sunriseEpoch,
        'sunset': EJsonValue sunset,
        'sunsetEpoch': EJsonValue sunsetEpoch,
        'moonphase': EJsonValue moonphase,
        'conditions': EJsonValue conditions,
        'description': EJsonValue description,
        'icon': EJsonValue icon,
        'source': EJsonValue source,
      } =>
        DayRealm(
          fromEJson(datetime),
          fromEJson(datetimeEpoch),
          fromEJson(tempmax),
          fromEJson(tempmin),
          fromEJson(temp),
          fromEJson(feelslikemax),
          fromEJson(feelslikemin),
          fromEJson(feelslike),
          fromEJson(dew),
          fromEJson(humidity),
          fromEJson(precip),
          fromEJson(precipprob),
          fromEJson(precipcover),
          fromEJson(snow),
          fromEJson(snowdepth),
          fromEJson(windgust),
          fromEJson(windspeed),
          fromEJson(winddir),
          fromEJson(pressure),
          fromEJson(cloudcover),
          fromEJson(visibility),
          fromEJson(solarradiation),
          fromEJson(solarenergy),
          fromEJson(uvindex),
          fromEJson(severerisk),
          fromEJson(sunrise),
          fromEJson(sunriseEpoch),
          fromEJson(sunset),
          fromEJson(sunsetEpoch),
          fromEJson(moonphase),
          fromEJson(conditions),
          fromEJson(description),
          fromEJson(icon),
          fromEJson(source),
          preciptype: fromEJson(ejson['preciptype'], defaultValue: const []),
          stations: fromEJson(ejson['stations'], defaultValue: const []),
          hours: fromEJson(ejson['hours'], defaultValue: const []),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(DayRealm._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, DayRealm, 'DayRealm', [
      SchemaProperty('datetime', RealmPropertyType.string),
      SchemaProperty('datetimeEpoch', RealmPropertyType.int),
      SchemaProperty('tempmax', RealmPropertyType.double),
      SchemaProperty('tempmin', RealmPropertyType.double),
      SchemaProperty('temp', RealmPropertyType.double),
      SchemaProperty('feelslikemax', RealmPropertyType.double),
      SchemaProperty('feelslikemin', RealmPropertyType.double),
      SchemaProperty('feelslike', RealmPropertyType.double),
      SchemaProperty('dew', RealmPropertyType.double),
      SchemaProperty('humidity', RealmPropertyType.double),
      SchemaProperty('precip', RealmPropertyType.double),
      SchemaProperty('precipprob', RealmPropertyType.double),
      SchemaProperty('precipcover', RealmPropertyType.double),
      SchemaProperty('preciptype', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('snow', RealmPropertyType.double),
      SchemaProperty('snowdepth', RealmPropertyType.double),
      SchemaProperty('windgust', RealmPropertyType.double),
      SchemaProperty('windspeed', RealmPropertyType.double),
      SchemaProperty('winddir', RealmPropertyType.double),
      SchemaProperty('pressure', RealmPropertyType.double),
      SchemaProperty('cloudcover', RealmPropertyType.double),
      SchemaProperty('visibility', RealmPropertyType.double),
      SchemaProperty('solarradiation', RealmPropertyType.double),
      SchemaProperty('solarenergy', RealmPropertyType.double),
      SchemaProperty('uvindex', RealmPropertyType.double),
      SchemaProperty('severerisk', RealmPropertyType.double),
      SchemaProperty('sunrise', RealmPropertyType.string),
      SchemaProperty('sunriseEpoch', RealmPropertyType.int),
      SchemaProperty('sunset', RealmPropertyType.string),
      SchemaProperty('sunsetEpoch', RealmPropertyType.int),
      SchemaProperty('moonphase', RealmPropertyType.double),
      SchemaProperty('conditions', RealmPropertyType.string),
      SchemaProperty('description', RealmPropertyType.string),
      SchemaProperty('icon', RealmPropertyType.string),
      SchemaProperty('stations', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('source', RealmPropertyType.string),
      SchemaProperty('hours', RealmPropertyType.object,
          linkTarget: 'HourRealm', collectionType: RealmCollectionType.list),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class HourRealm extends _HourRealm
    with RealmEntity, RealmObjectBase, RealmObject {
  HourRealm(
    String datetime,
    int datetimeEpoch,
    double temp,
    double feelslike,
    double humidity,
    double dew,
    double precip,
    double precipprob,
    double snow,
    double snowdepth,
    double windgust,
    double windspeed,
    double winddir,
    double pressure,
    double visibility,
    double cloudcover,
    double solarradiation,
    double solarenergy,
    double uvindex,
    double severerisk,
    String conditions,
    String icon,
    String source, {
    Iterable<String> preciptype = const [],
    Iterable<String> stations = const [],
  }) {
    RealmObjectBase.set(this, 'datetime', datetime);
    RealmObjectBase.set(this, 'datetimeEpoch', datetimeEpoch);
    RealmObjectBase.set(this, 'temp', temp);
    RealmObjectBase.set(this, 'feelslike', feelslike);
    RealmObjectBase.set(this, 'humidity', humidity);
    RealmObjectBase.set(this, 'dew', dew);
    RealmObjectBase.set(this, 'precip', precip);
    RealmObjectBase.set(this, 'precipprob', precipprob);
    RealmObjectBase.set(this, 'snow', snow);
    RealmObjectBase.set(this, 'snowdepth', snowdepth);
    RealmObjectBase.set<RealmList<String>>(
        this, 'preciptype', RealmList<String>(preciptype));
    RealmObjectBase.set(this, 'windgust', windgust);
    RealmObjectBase.set(this, 'windspeed', windspeed);
    RealmObjectBase.set(this, 'winddir', winddir);
    RealmObjectBase.set(this, 'pressure', pressure);
    RealmObjectBase.set(this, 'visibility', visibility);
    RealmObjectBase.set(this, 'cloudcover', cloudcover);
    RealmObjectBase.set(this, 'solarradiation', solarradiation);
    RealmObjectBase.set(this, 'solarenergy', solarenergy);
    RealmObjectBase.set(this, 'uvindex', uvindex);
    RealmObjectBase.set(this, 'severerisk', severerisk);
    RealmObjectBase.set(this, 'conditions', conditions);
    RealmObjectBase.set(this, 'icon', icon);
    RealmObjectBase.set<RealmList<String>>(
        this, 'stations', RealmList<String>(stations));
    RealmObjectBase.set(this, 'source', source);
  }

  HourRealm._();

  @override
  String get datetime =>
      RealmObjectBase.get<String>(this, 'datetime') as String;
  @override
  set datetime(String value) => RealmObjectBase.set(this, 'datetime', value);

  @override
  int get datetimeEpoch =>
      RealmObjectBase.get<int>(this, 'datetimeEpoch') as int;
  @override
  set datetimeEpoch(int value) =>
      RealmObjectBase.set(this, 'datetimeEpoch', value);

  @override
  double get temp => RealmObjectBase.get<double>(this, 'temp') as double;
  @override
  set temp(double value) => RealmObjectBase.set(this, 'temp', value);

  @override
  double get feelslike =>
      RealmObjectBase.get<double>(this, 'feelslike') as double;
  @override
  set feelslike(double value) => RealmObjectBase.set(this, 'feelslike', value);

  @override
  double get humidity =>
      RealmObjectBase.get<double>(this, 'humidity') as double;
  @override
  set humidity(double value) => RealmObjectBase.set(this, 'humidity', value);

  @override
  double get dew => RealmObjectBase.get<double>(this, 'dew') as double;
  @override
  set dew(double value) => RealmObjectBase.set(this, 'dew', value);

  @override
  double get precip => RealmObjectBase.get<double>(this, 'precip') as double;
  @override
  set precip(double value) => RealmObjectBase.set(this, 'precip', value);

  @override
  double get precipprob =>
      RealmObjectBase.get<double>(this, 'precipprob') as double;
  @override
  set precipprob(double value) =>
      RealmObjectBase.set(this, 'precipprob', value);

  @override
  double get snow => RealmObjectBase.get<double>(this, 'snow') as double;
  @override
  set snow(double value) => RealmObjectBase.set(this, 'snow', value);

  @override
  double get snowdepth =>
      RealmObjectBase.get<double>(this, 'snowdepth') as double;
  @override
  set snowdepth(double value) => RealmObjectBase.set(this, 'snowdepth', value);

  @override
  RealmList<String> get preciptype =>
      RealmObjectBase.get<String>(this, 'preciptype') as RealmList<String>;
  @override
  set preciptype(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  double get windgust =>
      RealmObjectBase.get<double>(this, 'windgust') as double;
  @override
  set windgust(double value) => RealmObjectBase.set(this, 'windgust', value);

  @override
  double get windspeed =>
      RealmObjectBase.get<double>(this, 'windspeed') as double;
  @override
  set windspeed(double value) => RealmObjectBase.set(this, 'windspeed', value);

  @override
  double get winddir => RealmObjectBase.get<double>(this, 'winddir') as double;
  @override
  set winddir(double value) => RealmObjectBase.set(this, 'winddir', value);

  @override
  double get pressure =>
      RealmObjectBase.get<double>(this, 'pressure') as double;
  @override
  set pressure(double value) => RealmObjectBase.set(this, 'pressure', value);

  @override
  double get visibility =>
      RealmObjectBase.get<double>(this, 'visibility') as double;
  @override
  set visibility(double value) =>
      RealmObjectBase.set(this, 'visibility', value);

  @override
  double get cloudcover =>
      RealmObjectBase.get<double>(this, 'cloudcover') as double;
  @override
  set cloudcover(double value) =>
      RealmObjectBase.set(this, 'cloudcover', value);

  @override
  double get solarradiation =>
      RealmObjectBase.get<double>(this, 'solarradiation') as double;
  @override
  set solarradiation(double value) =>
      RealmObjectBase.set(this, 'solarradiation', value);

  @override
  double get solarenergy =>
      RealmObjectBase.get<double>(this, 'solarenergy') as double;
  @override
  set solarenergy(double value) =>
      RealmObjectBase.set(this, 'solarenergy', value);

  @override
  double get uvindex => RealmObjectBase.get<double>(this, 'uvindex') as double;
  @override
  set uvindex(double value) => RealmObjectBase.set(this, 'uvindex', value);

  @override
  double get severerisk =>
      RealmObjectBase.get<double>(this, 'severerisk') as double;
  @override
  set severerisk(double value) =>
      RealmObjectBase.set(this, 'severerisk', value);

  @override
  String get conditions =>
      RealmObjectBase.get<String>(this, 'conditions') as String;
  @override
  set conditions(String value) =>
      RealmObjectBase.set(this, 'conditions', value);

  @override
  String get icon => RealmObjectBase.get<String>(this, 'icon') as String;
  @override
  set icon(String value) => RealmObjectBase.set(this, 'icon', value);

  @override
  RealmList<String> get stations =>
      RealmObjectBase.get<String>(this, 'stations') as RealmList<String>;
  @override
  set stations(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  String get source => RealmObjectBase.get<String>(this, 'source') as String;
  @override
  set source(String value) => RealmObjectBase.set(this, 'source', value);

  @override
  Stream<RealmObjectChanges<HourRealm>> get changes =>
      RealmObjectBase.getChanges<HourRealm>(this);

  @override
  Stream<RealmObjectChanges<HourRealm>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<HourRealm>(this, keyPaths);

  @override
  HourRealm freeze() => RealmObjectBase.freezeObject<HourRealm>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'datetime': datetime.toEJson(),
      'datetimeEpoch': datetimeEpoch.toEJson(),
      'temp': temp.toEJson(),
      'feelslike': feelslike.toEJson(),
      'humidity': humidity.toEJson(),
      'dew': dew.toEJson(),
      'precip': precip.toEJson(),
      'precipprob': precipprob.toEJson(),
      'snow': snow.toEJson(),
      'snowdepth': snowdepth.toEJson(),
      'preciptype': preciptype.toEJson(),
      'windgust': windgust.toEJson(),
      'windspeed': windspeed.toEJson(),
      'winddir': winddir.toEJson(),
      'pressure': pressure.toEJson(),
      'visibility': visibility.toEJson(),
      'cloudcover': cloudcover.toEJson(),
      'solarradiation': solarradiation.toEJson(),
      'solarenergy': solarenergy.toEJson(),
      'uvindex': uvindex.toEJson(),
      'severerisk': severerisk.toEJson(),
      'conditions': conditions.toEJson(),
      'icon': icon.toEJson(),
      'stations': stations.toEJson(),
      'source': source.toEJson(),
    };
  }

  static EJsonValue _toEJson(HourRealm value) => value.toEJson();
  static HourRealm _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'datetime': EJsonValue datetime,
        'datetimeEpoch': EJsonValue datetimeEpoch,
        'temp': EJsonValue temp,
        'feelslike': EJsonValue feelslike,
        'humidity': EJsonValue humidity,
        'dew': EJsonValue dew,
        'precip': EJsonValue precip,
        'precipprob': EJsonValue precipprob,
        'snow': EJsonValue snow,
        'snowdepth': EJsonValue snowdepth,
        'windgust': EJsonValue windgust,
        'windspeed': EJsonValue windspeed,
        'winddir': EJsonValue winddir,
        'pressure': EJsonValue pressure,
        'visibility': EJsonValue visibility,
        'cloudcover': EJsonValue cloudcover,
        'solarradiation': EJsonValue solarradiation,
        'solarenergy': EJsonValue solarenergy,
        'uvindex': EJsonValue uvindex,
        'severerisk': EJsonValue severerisk,
        'conditions': EJsonValue conditions,
        'icon': EJsonValue icon,
        'source': EJsonValue source,
      } =>
        HourRealm(
          fromEJson(datetime),
          fromEJson(datetimeEpoch),
          fromEJson(temp),
          fromEJson(feelslike),
          fromEJson(humidity),
          fromEJson(dew),
          fromEJson(precip),
          fromEJson(precipprob),
          fromEJson(snow),
          fromEJson(snowdepth),
          fromEJson(windgust),
          fromEJson(windspeed),
          fromEJson(winddir),
          fromEJson(pressure),
          fromEJson(visibility),
          fromEJson(cloudcover),
          fromEJson(solarradiation),
          fromEJson(solarenergy),
          fromEJson(uvindex),
          fromEJson(severerisk),
          fromEJson(conditions),
          fromEJson(icon),
          fromEJson(source),
          preciptype: fromEJson(ejson['preciptype'], defaultValue: const []),
          stations: fromEJson(ejson['stations'], defaultValue: const []),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(HourRealm._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(ObjectType.realmObject, HourRealm, 'HourRealm', [
      SchemaProperty('datetime', RealmPropertyType.string),
      SchemaProperty('datetimeEpoch', RealmPropertyType.int),
      SchemaProperty('temp', RealmPropertyType.double),
      SchemaProperty('feelslike', RealmPropertyType.double),
      SchemaProperty('humidity', RealmPropertyType.double),
      SchemaProperty('dew', RealmPropertyType.double),
      SchemaProperty('precip', RealmPropertyType.double),
      SchemaProperty('precipprob', RealmPropertyType.double),
      SchemaProperty('snow', RealmPropertyType.double),
      SchemaProperty('snowdepth', RealmPropertyType.double),
      SchemaProperty('preciptype', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('windgust', RealmPropertyType.double),
      SchemaProperty('windspeed', RealmPropertyType.double),
      SchemaProperty('winddir', RealmPropertyType.double),
      SchemaProperty('pressure', RealmPropertyType.double),
      SchemaProperty('visibility', RealmPropertyType.double),
      SchemaProperty('cloudcover', RealmPropertyType.double),
      SchemaProperty('solarradiation', RealmPropertyType.double),
      SchemaProperty('solarenergy', RealmPropertyType.double),
      SchemaProperty('uvindex', RealmPropertyType.double),
      SchemaProperty('severerisk', RealmPropertyType.double),
      SchemaProperty('conditions', RealmPropertyType.string),
      SchemaProperty('icon', RealmPropertyType.string),
      SchemaProperty('stations', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('source', RealmPropertyType.string),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class StationRealm extends _StationRealm
    with RealmEntity, RealmObjectBase, RealmObject {
  StationRealm(
    double distance,
    double latitude,
    double longitude,
    int useCount,
    String id,
    String name,
    int quality,
    double contribution,
  ) {
    RealmObjectBase.set(this, 'distance', distance);
    RealmObjectBase.set(this, 'latitude', latitude);
    RealmObjectBase.set(this, 'longitude', longitude);
    RealmObjectBase.set(this, 'useCount', useCount);
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set(this, 'quality', quality);
    RealmObjectBase.set(this, 'contribution', contribution);
  }

  StationRealm._();

  @override
  double get distance =>
      RealmObjectBase.get<double>(this, 'distance') as double;
  @override
  set distance(double value) => RealmObjectBase.set(this, 'distance', value);

  @override
  double get latitude =>
      RealmObjectBase.get<double>(this, 'latitude') as double;
  @override
  set latitude(double value) => RealmObjectBase.set(this, 'latitude', value);

  @override
  double get longitude =>
      RealmObjectBase.get<double>(this, 'longitude') as double;
  @override
  set longitude(double value) => RealmObjectBase.set(this, 'longitude', value);

  @override
  int get useCount => RealmObjectBase.get<int>(this, 'useCount') as int;
  @override
  set useCount(int value) => RealmObjectBase.set(this, 'useCount', value);

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  int get quality => RealmObjectBase.get<int>(this, 'quality') as int;
  @override
  set quality(int value) => RealmObjectBase.set(this, 'quality', value);

  @override
  double get contribution =>
      RealmObjectBase.get<double>(this, 'contribution') as double;
  @override
  set contribution(double value) =>
      RealmObjectBase.set(this, 'contribution', value);

  @override
  Stream<RealmObjectChanges<StationRealm>> get changes =>
      RealmObjectBase.getChanges<StationRealm>(this);

  @override
  Stream<RealmObjectChanges<StationRealm>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<StationRealm>(this, keyPaths);

  @override
  StationRealm freeze() => RealmObjectBase.freezeObject<StationRealm>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'distance': distance.toEJson(),
      'latitude': latitude.toEJson(),
      'longitude': longitude.toEJson(),
      'useCount': useCount.toEJson(),
      'id': id.toEJson(),
      'name': name.toEJson(),
      'quality': quality.toEJson(),
      'contribution': contribution.toEJson(),
    };
  }

  static EJsonValue _toEJson(StationRealm value) => value.toEJson();
  static StationRealm _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'distance': EJsonValue distance,
        'latitude': EJsonValue latitude,
        'longitude': EJsonValue longitude,
        'useCount': EJsonValue useCount,
        'id': EJsonValue id,
        'name': EJsonValue name,
        'quality': EJsonValue quality,
        'contribution': EJsonValue contribution,
      } =>
        StationRealm(
          fromEJson(distance),
          fromEJson(latitude),
          fromEJson(longitude),
          fromEJson(useCount),
          fromEJson(id),
          fromEJson(name),
          fromEJson(quality),
          fromEJson(contribution),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(StationRealm._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, StationRealm, 'StationRealm', [
      SchemaProperty('distance', RealmPropertyType.double),
      SchemaProperty('latitude', RealmPropertyType.double),
      SchemaProperty('longitude', RealmPropertyType.double),
      SchemaProperty('useCount', RealmPropertyType.int),
      SchemaProperty('id', RealmPropertyType.string),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('quality', RealmPropertyType.int),
      SchemaProperty('contribution', RealmPropertyType.double),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class WeatherRealm extends _WeatherRealm
    with RealmEntity, RealmObjectBase, RealmObject {
  WeatherRealm(
    String id,
    double queryCost,
    double latitude,
    double longitude,
    String resolvedAddress,
    String address,
    String timezone,
    double tzoffset,
    String description, {
    Iterable<DayRealm> days = const [],
    Iterable<String> alerts = const [],
    Iterable<StationRealm> stations = const [],
    CurrentConditionsRealm? currentConditions,
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'queryCost', queryCost);
    RealmObjectBase.set(this, 'latitude', latitude);
    RealmObjectBase.set(this, 'longitude', longitude);
    RealmObjectBase.set(this, 'resolvedAddress', resolvedAddress);
    RealmObjectBase.set(this, 'address', address);
    RealmObjectBase.set(this, 'timezone', timezone);
    RealmObjectBase.set(this, 'tzoffset', tzoffset);
    RealmObjectBase.set(this, 'description', description);
    RealmObjectBase.set<RealmList<DayRealm>>(
        this, 'days', RealmList<DayRealm>(days));
    RealmObjectBase.set<RealmList<String>>(
        this, 'alerts', RealmList<String>(alerts));
    RealmObjectBase.set<RealmList<StationRealm>>(
        this, 'stations', RealmList<StationRealm>(stations));
    RealmObjectBase.set(this, 'currentConditions', currentConditions);
  }

  WeatherRealm._();

  @override
  String get id => RealmObjectBase.get<String>(this, 'id') as String;
  @override
  set id(String value) => RealmObjectBase.set(this, 'id', value);

  @override
  double get queryCost =>
      RealmObjectBase.get<double>(this, 'queryCost') as double;
  @override
  set queryCost(double value) => RealmObjectBase.set(this, 'queryCost', value);

  @override
  double get latitude =>
      RealmObjectBase.get<double>(this, 'latitude') as double;
  @override
  set latitude(double value) => RealmObjectBase.set(this, 'latitude', value);

  @override
  double get longitude =>
      RealmObjectBase.get<double>(this, 'longitude') as double;
  @override
  set longitude(double value) => RealmObjectBase.set(this, 'longitude', value);

  @override
  String get resolvedAddress =>
      RealmObjectBase.get<String>(this, 'resolvedAddress') as String;
  @override
  set resolvedAddress(String value) =>
      RealmObjectBase.set(this, 'resolvedAddress', value);

  @override
  String get address => RealmObjectBase.get<String>(this, 'address') as String;
  @override
  set address(String value) => RealmObjectBase.set(this, 'address', value);

  @override
  String get timezone =>
      RealmObjectBase.get<String>(this, 'timezone') as String;
  @override
  set timezone(String value) => RealmObjectBase.set(this, 'timezone', value);

  @override
  double get tzoffset =>
      RealmObjectBase.get<double>(this, 'tzoffset') as double;
  @override
  set tzoffset(double value) => RealmObjectBase.set(this, 'tzoffset', value);

  @override
  String get description =>
      RealmObjectBase.get<String>(this, 'description') as String;
  @override
  set description(String value) =>
      RealmObjectBase.set(this, 'description', value);

  @override
  RealmList<DayRealm> get days =>
      RealmObjectBase.get<DayRealm>(this, 'days') as RealmList<DayRealm>;
  @override
  set days(covariant RealmList<DayRealm> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<String> get alerts =>
      RealmObjectBase.get<String>(this, 'alerts') as RealmList<String>;
  @override
  set alerts(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<StationRealm> get stations =>
      RealmObjectBase.get<StationRealm>(this, 'stations')
          as RealmList<StationRealm>;
  @override
  set stations(covariant RealmList<StationRealm> value) =>
      throw RealmUnsupportedSetError();

  @override
  CurrentConditionsRealm? get currentConditions =>
      RealmObjectBase.get<CurrentConditionsRealm>(this, 'currentConditions')
          as CurrentConditionsRealm?;
  @override
  set currentConditions(covariant CurrentConditionsRealm? value) =>
      RealmObjectBase.set(this, 'currentConditions', value);

  @override
  Stream<RealmObjectChanges<WeatherRealm>> get changes =>
      RealmObjectBase.getChanges<WeatherRealm>(this);

  @override
  Stream<RealmObjectChanges<WeatherRealm>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<WeatherRealm>(this, keyPaths);

  @override
  WeatherRealm freeze() => RealmObjectBase.freezeObject<WeatherRealm>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'queryCost': queryCost.toEJson(),
      'latitude': latitude.toEJson(),
      'longitude': longitude.toEJson(),
      'resolvedAddress': resolvedAddress.toEJson(),
      'address': address.toEJson(),
      'timezone': timezone.toEJson(),
      'tzoffset': tzoffset.toEJson(),
      'description': description.toEJson(),
      'days': days.toEJson(),
      'alerts': alerts.toEJson(),
      'stations': stations.toEJson(),
      'currentConditions': currentConditions.toEJson(),
    };
  }

  static EJsonValue _toEJson(WeatherRealm value) => value.toEJson();
  static WeatherRealm _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'queryCost': EJsonValue queryCost,
        'latitude': EJsonValue latitude,
        'longitude': EJsonValue longitude,
        'resolvedAddress': EJsonValue resolvedAddress,
        'address': EJsonValue address,
        'timezone': EJsonValue timezone,
        'tzoffset': EJsonValue tzoffset,
        'description': EJsonValue description,
      } =>
        WeatherRealm(
          fromEJson(id),
          fromEJson(queryCost),
          fromEJson(latitude),
          fromEJson(longitude),
          fromEJson(resolvedAddress),
          fromEJson(address),
          fromEJson(timezone),
          fromEJson(tzoffset),
          fromEJson(description),
          days: fromEJson(ejson['days'], defaultValue: const []),
          alerts: fromEJson(ejson['alerts'], defaultValue: const []),
          stations: fromEJson(ejson['stations'], defaultValue: const []),
          currentConditions: fromEJson(ejson['currentConditions']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(WeatherRealm._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, WeatherRealm, 'WeatherRealm', [
      SchemaProperty('id', RealmPropertyType.string, primaryKey: true),
      SchemaProperty('queryCost', RealmPropertyType.double),
      SchemaProperty('latitude', RealmPropertyType.double),
      SchemaProperty('longitude', RealmPropertyType.double),
      SchemaProperty('resolvedAddress', RealmPropertyType.string),
      SchemaProperty('address', RealmPropertyType.string),
      SchemaProperty('timezone', RealmPropertyType.string),
      SchemaProperty('tzoffset', RealmPropertyType.double),
      SchemaProperty('description', RealmPropertyType.string),
      SchemaProperty('days', RealmPropertyType.object,
          linkTarget: 'DayRealm', collectionType: RealmCollectionType.list),
      SchemaProperty('alerts', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
      SchemaProperty('stations', RealmPropertyType.object,
          linkTarget: 'StationRealm', collectionType: RealmCollectionType.list),
      SchemaProperty('currentConditions', RealmPropertyType.object,
          optional: true, linkTarget: 'CurrentConditionsRealm'),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class StationEntry extends _StationEntry
    with RealmEntity, RealmObjectBase, RealmObject {
  StationEntry(
    String key, {
    StationRealm? value,
  }) {
    RealmObjectBase.set(this, 'key', key);
    RealmObjectBase.set(this, 'value', value);
  }

  StationEntry._();

  @override
  String get key => RealmObjectBase.get<String>(this, 'key') as String;
  @override
  set key(String value) => RealmObjectBase.set(this, 'key', value);

  @override
  StationRealm? get value =>
      RealmObjectBase.get<StationRealm>(this, 'value') as StationRealm?;
  @override
  set value(covariant StationRealm? value) =>
      RealmObjectBase.set(this, 'value', value);

  @override
  Stream<RealmObjectChanges<StationEntry>> get changes =>
      RealmObjectBase.getChanges<StationEntry>(this);

  @override
  Stream<RealmObjectChanges<StationEntry>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<StationEntry>(this, keyPaths);

  @override
  StationEntry freeze() => RealmObjectBase.freezeObject<StationEntry>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'key': key.toEJson(),
      'value': value.toEJson(),
    };
  }

  static EJsonValue _toEJson(StationEntry value) => value.toEJson();
  static StationEntry _fromEJson(EJsonValue ejson) {
    if (ejson is! Map<String, dynamic>) return raiseInvalidEJson(ejson);
    return switch (ejson) {
      {
        'key': EJsonValue key,
      } =>
        StationEntry(
          fromEJson(key),
          value: fromEJson(ejson['value']),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(StationEntry._);
    register(_toEJson, _fromEJson);
    return const SchemaObject(
        ObjectType.realmObject, StationEntry, 'StationEntry', [
      SchemaProperty('key', RealmPropertyType.string),
      SchemaProperty('value', RealmPropertyType.object,
          optional: true, linkTarget: 'StationRealm'),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
