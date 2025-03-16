part of 'weather_provider.dart';

class WeatherState {
  final bool isLoading;
  final String? errorMessage;
  final Position? position;
  final Weather? weather;
  final Day? weatherToday;
  final Hour? hour;
  final List<Day> last5Days;

  WeatherState({
    this.isLoading = true,
    this.errorMessage,
    this.position,
    this.weather,
    this.weatherToday,
    this.hour,
    this.last5Days = const [],
  });

  WeatherState copyWith({
    bool? isLoading,
    String? errorMessage,
    Position? position,
    Weather? weather,
    Day? weatherToday,
    Hour? hour,
    List<Day>? last5Days,
  }) {
    return WeatherState(
      isLoading: isLoading ?? this.isLoading,
      errorMessage: errorMessage ?? this.errorMessage,
      position: position ?? this.position,
      weather: weather ?? this.weather,
      weatherToday: weatherToday ?? this.weatherToday,
      hour: hour ?? this.hour,
      last5Days: last5Days ?? this.last5Days,
    );
  }
}
