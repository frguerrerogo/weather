part of 'weather_provider.dart';

class WeatherNotifier extends StateNotifier<WeatherState> {
  final WeatherRepository _weatherRepository;

  WeatherNotifier()
    : _weatherRepository = Injector.container.resolve<WeatherRepository>(),
      super(WeatherState());

  Future<void> initLoad(bool hasInternet) async {
    Day? weatherToday;
    List<Day> last5Days = [];
    Hour? hour;

    try {
      Position? position = await checkLocationServicesAndPermissions();

      try {
        if (!hasInternet) {
          await Future.delayed(Duration(microseconds: 100));
          final weather = _weatherRepository.getWeatherFromLocal();
          if (weather != null) {
            if (weather.days.isNotEmpty) {
              final currentHour = AppUtils.currentHour();
              weatherToday = weather.days.last;

              hour = weatherToday.hours.firstWhere((hour) => hour.datetime == currentHour);

              if (weather.days.length >= 6) last5Days = weather.days.sublist(0, 5);

              state = state.copyWith(
                isLoading: false,
                weather: weather,
                weatherToday: weatherToday,
                hour: hour,
                last5Days: last5Days.reversed.toList(),
              );
            }
          } else {
            state = state.copyWith(
              errorMessage: "Error al obtener el clima de BD Local",
              isLoading: false,
            );
          }
        } else {
          if (position == null) {
            state = state.copyWith(
              errorMessage: "No se pudo obtener la ubicación. Verifica los servicios y permisos.",
              isLoading: false,
            );
            return;
          }
          final weather = await _weatherRepository.fetchWeatherFromRemote(
            latitude: position.latitude,
            longitude: position.longitude,
          );

          if (weather.days.isNotEmpty) {
            final currentHour = AppUtils.currentHour();
            weatherToday = weather.days.last;

            hour = weatherToday.hours.firstWhere((hour) => hour.datetime == currentHour);

            if (weather.days.length >= 6) last5Days = weather.days.sublist(0, 5);
          }

          _weatherRepository.saveWeather(weather);

          state = state.copyWith(
            isLoading: false,
            position: position,
            weather: weather,
            weatherToday: weatherToday,
            hour: hour,
            last5Days: last5Days.reversed.toList(),
          );
        }
      } catch (e) {
        state = state.copyWith(
          errorMessage: "Error al obtener el clima: ${e.toString()}",
          isLoading: false,
        );
      }
    } catch (e) {
      state = state.copyWith(
        errorMessage: "Error al obtener la ubicación: ${e.toString()}",
        isLoading: false,
      );
    }
  }

  Future<Position?> checkLocationServicesAndPermissions() async {
    var status = await Permission.location.status;
    Position? position;
    if (status.isGranted) {
      position = await Geolocator.getCurrentPosition();
    } else if (status.isDenied) {
      status = await Permission.location.request();
      if (status.isGranted) {
        position = await Geolocator.getCurrentPosition();
      } else {
        position = null;
      }
    } else if (status.isPermanentlyDenied) {
      await openAppSettings();
      position = null;
    }
    return position;
  }
}
