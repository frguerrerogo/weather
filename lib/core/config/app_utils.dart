import 'package:intl/intl.dart';
import 'package:weather/core/config/app_constants.dart';

class AppUtils {
  static String translateWeatherCondition(String condition) {
    return AppConstants.weatherConditionsTranslations[condition] ?? "Desconocido";
  }

  static String translateCombinedWeatherConditions(String conditions) {
    final List<String> conditionList = conditions.split(',');
    return conditionList.map((condition) => translateWeatherCondition(condition.trim())).join(', ');
  }

  static String formatDate(String dateString) {
    final DateTime date = DateTime.parse(dateString);

    final String formattedDate = DateFormat("EEEE, MMMM d", 'es').format(date);
    String capitalizedDate = formattedDate
        .split(' ')
        .map((word) {
          return word.isNotEmpty ? word[0].toUpperCase() + word.substring(1) : word;
        })
        .join(' ');
    return capitalizedDate;
  }

  static String currentHour() {
    return DateFormat('HH:00:00').format(DateTime.now());
  }
}
