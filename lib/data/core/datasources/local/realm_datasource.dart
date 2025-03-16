import 'package:realm/realm.dart';
import 'package:weather/data/core/realm/index.dart'
    show CurrentConditionsRealm, DayRealm, HourRealm, StationEntry, StationRealm, WeatherRealm;

class RealmDataSource {
  late Realm _realm;
  final String id = "weather";

  RealmDataSource() {
    final config = Configuration.local([
      CurrentConditionsRealm.schema,
      DayRealm.schema,
      HourRealm.schema,
      StationRealm.schema,
      WeatherRealm.schema,
      StationEntry.schema,
    ]);
    _realm = Realm(config);
  }

  void saveWeather(WeatherRealm weather) {
    _realm.write(() {
      _realm.add(weather, update: true);
    });
  }

  WeatherRealm? getWeather() {
    return _realm.find<WeatherRealm>(id);
  }

  void deleteWeather() {
    final weather = _realm.find<WeatherRealm>(id);
    if (weather != null) {
      _realm.write(() {
        _realm.delete(weather);
      });
    }
  }

  bool hasWeather() {
    return _realm.find<WeatherRealm>(id) != null;
  }

  void close() {
    _realm.close();
  }
}
