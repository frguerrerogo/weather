import 'package:kiwi/kiwi.dart';

// Base de Datos

// DataSources

// Adapters
import 'package:weather/data/core/adapters/index.dart';

// Repositories

part 'dependency_injector.g.dart';

abstract class Injector {
  static final KiwiContainer container = KiwiContainer();

  static void setup() {
    final injector = _$Injector();
    injector._configure();
  }

  // Base de Datos
  void _registerDatabase();

  //  DataSources
  void _registerDataSources();

  // Adapters
  @Register.singleton(WeatherAdapter)
  @Register.singleton(DayAdapter)
  @Register.singleton(HourAdapter)
  @Register.singleton(StationAdapter)
  @Register.singleton(CurrentConditionsAdapter)
  void _registerAdapters();

  // Repositories
  void _registerRepositories();

  // Cubits
  void _registerProviders();

  // Método principal que llama a todos los registros
  void _configure() {
    _registerDatabase();
    _registerDataSources();
    _registerAdapters();
    _registerRepositories();
    _registerProviders();
  }
}
