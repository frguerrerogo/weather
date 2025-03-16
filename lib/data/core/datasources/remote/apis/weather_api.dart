import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:weather/data/core/datasources/remote/apis/api_utils.dart';
import 'package:weather/data/core/models/index.dart' show WeatherModel;

const String _baseUrl =
    'https://weather.visualcrossing.com/VisualCrossingWebServices/rest/services/timeline/{latitude},{longitude}/{startDate}/{endDate}?unitGroup=metric&key={apiKey}&contentType=json';
const String _apiKey = 'J7UX4WJ3NVTRCHTKMTQR7XUZ5';

class WeatherApi {
  Future<WeatherModel> fetchWeather({required double latitude, required double longitude}) async {
    final (startDate, endDate) = ApiUtils.getDateRange();
    final uri = Uri.parse(
      _baseUrl
          .replaceAll('{latitude}', latitude.toString())
          .replaceAll('{longitude}', longitude.toString())
          .replaceAll('{startDate}', startDate)
          .replaceAll('{endDate}', endDate)
          .replaceAll('{apiKey}', _apiKey),
    );

    try {
      final response = await http.get(uri);

      if (response.statusCode == 200) {
        final jsonResponse = json.decode(response.body);
        return WeatherModel.fromJson(ApiUtils.validateMapResponse(jsonResponse));
      } else {
        throw ApiUtils.handleError(response.statusCode);
      }
    } on http.ClientException catch (e) {
      throw Exception("Failed to connect to the server: ${e.message}");
    } on FormatException catch (e) {
      throw Exception("Failed to parse JSON: ${e.message}");
    } catch (e) {
      throw Exception("An unexpected error occurred: ${e.toString()}");
    }
  }
}
