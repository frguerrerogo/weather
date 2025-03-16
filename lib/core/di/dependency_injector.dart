import 'package:kiwi/kiwi.dart';

// DataSources
import 'package:weather/data/core/datasources/remote/index.dart';
import 'package:weather/data/core/datasources/local/index.dart';

// Adapters
import 'package:weather/data/core/adapters/index.dart';

// Repositories
import 'package:weather/domain/core/repositories/index.dart';
import 'package:weather/data/core/repositories/index.dart';

part 'dependency_injector.g.dart';

abstract class Injector {
  static final KiwiContainer container = KiwiContainer();

  static void setup() {
    final injector = _$Injector();
    injector._configure();
  }

  //  DataSources
  @Register.singleton(WeatherApi)
  @Register.singleton(RealmDataSource)
  void _registerDataSources();

  // Adapters
  @Register.singleton(WeatherAdapter)
  @Register.singleton(DayAdapter)
  @Register.singleton(HourAdapter)
  @Register.singleton(StationAdapter)
  @Register.singleton(CurrentConditionsAdapter)
  void _registerAdapters();

  // Repositories
  @Register.singleton(WeatherRepository, from: WeatherRepositoryImpl)
  void _registerRepositories();

  // Método principal que llama a todos los registros
  void _configure() {
    _registerDataSources();
    _registerAdapters();
    _registerRepositories();
  }
}
