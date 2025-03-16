part of 'weather_provider.dart';

class WeatherNotifier extends StateNotifier<WeatherState> {
  final WeatherRepository _weatherRepository;

  WeatherNotifier()
    : _weatherRepository = Injector.container.resolve<WeatherRepository>(),
      super(WeatherState());

  Future<void> getCurrentLocation() async {
    Day? weatherToday;
    List<Day> last5Days = [];
    Hour? hour;
    bool conect = true;
    try {
      Position? position = await checkLocationServicesAndPermissions();

      try {
        if (conect) {
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
                //position: position,
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
          if (position != null) {
            state = state.copyWith(
              errorMessage: "No se pudo obtener la ubicación. Verifica los servicios y permisos.",
              isLoading: false,
            );
            return;
          }
          final weather = await _weatherRepository.fetchWeatherFromRemote(
            latitude: position!.latitude,
            longitude: position!.longitude,
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
    // Verifica si los servicios de ubicación están habilitados
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return null; // Servicios de ubicación desactivados
    }

    // Verifica los permisos de ubicación
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return null; // Permisos denegados
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return null; // Permisos denegados permanentemente
    }

    // Obtiene la posición actual
    return await Geolocator.getCurrentPosition();
  }
}
