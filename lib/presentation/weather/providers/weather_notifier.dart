part of 'weather_provider.dart';

// Notifier para manejar la lógica del clima
class WeatherNotifier extends StateNotifier<WeatherState> {
  final WeatherRepository _weatherRepository;

  WeatherNotifier()
    : _weatherRepository = Injector.container.resolve<WeatherRepository>(),
      super(WeatherState());

  Future<void> getCurrentLocation() async {
    Day? weatherToday;
    List<Day> last5Days = [];
    Hour? hour;
    try {
      // Verifica si los servicios de ubicación están habilitados
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        state = state.copyWith(
          errorMessage: "Los servicios de ubicación están desactivados.",
          isLoading: false,
        );
        return;
      }

      // Verifica los permisos de ubicación
      LocationPermission permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.denied) {
        permission = await Geolocator.requestPermission();
        if (permission == LocationPermission.denied) {
          state = state.copyWith(
            errorMessage: "Los permisos de ubicación fueron denegados.",
            isLoading: false,
          );
          return;
        }
      }

      if (permission == LocationPermission.deniedForever) {
        state = state.copyWith(
          errorMessage: "Los permisos de ubicación están denegados permanentemente.",
          isLoading: false,
        );
        return;
      }

      Position position = await Geolocator.getCurrentPosition();

      try {
        final weather = await _weatherRepository.getWeather(
          latitude: position.latitude,
          longitude: position.longitude,
        );

        if (weather.days.isNotEmpty) {
          final currentHour = AppUtils.currentHour();
          weatherToday = weather.days.last;

          hour = weatherToday.hours.firstWhere((hour) => hour.datetime == currentHour);

          if (weather.days.length >= 6) last5Days = weather.days.sublist(0, 5);
        }

        state = state.copyWith(
          isLoading: false,
          position: position,
          weather: weather,
          weatherToday: weatherToday,
          hour: hour,
          last5Days: last5Days.reversed.toList(),
        );
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
}
