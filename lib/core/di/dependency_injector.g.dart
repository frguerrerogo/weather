// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dependency_injector.dart';

// **************************************************************************
// KiwiInjectorGenerator
// **************************************************************************

class _$Injector extends Injector {
  @override
  void _registerDatabase() {}
  @override
  void _registerDataSources() {}
  @override
  void _registerAdapters() {
    final KiwiContainer container = KiwiContainer();
    container
      ..registerSingleton((c) => WeatherAdapter(
          dayAdapter: c.resolve<DayAdapter>(),
          stationAdapter: c.resolve<StationAdapter>(),
          currentConditionsAdapter: c.resolve<CurrentConditionsAdapter>()))
      ..registerSingleton(
          (c) => DayAdapter(hourAdapter: c.resolve<HourAdapter>()))
      ..registerSingleton((c) => HourAdapter())
      ..registerSingleton((c) => StationAdapter())
      ..registerSingleton((c) => CurrentConditionsAdapter());
  }

  @override
  void _registerRepositories() {}
  @override
  void _registerProviders() {}
}
